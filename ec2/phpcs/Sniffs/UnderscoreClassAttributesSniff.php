<?php
/**
 * Checks usage of underscore in class attributes
 *
 * @author    Camilo Uran <camilo.pico@scuti.asia>
 */

use PHP_CodeSniffer\Files\File;
use PHP_CodeSniffer\Sniffs\Sniff;

class UnderscoreClassAttributesSniff implements Sniff
{
    public function register ()
    {
        return [T_VARIABLE];
    }

    public function process(File $phpcsFile, $stackPtr)
    {
        try {
            $tokens      = $phpcsFile->getTokens();
            $varName     = ltrim($tokens[$stackPtr]['content'], '$');
            $memberProps = $phpcsFile->getMemberProperties($stackPtr);
            if (empty($memberProps) === true) {
                // Exception encountered.
                return;
            }

            $scope = ucfirst($memberProps['scope']);
            $beginsWithUnderscore = (substr($varName, 0, 1) === '_');

            if ($scope === 'Public' && $beginsWithUnderscore) {
                $error = "$scope member variable \"$varName\" must not contain a leading underscore";
                $phpcsFile->addError($error, $stackPtr, 'PublicHasUnderscore');

            } else if ($scope !== 'Public' && !$beginsWithUnderscore) {
                $error = "$scope member variable \"$varName\" must contain a leading underscore";
                $phpcsFile->addError($error, $stackPtr, 'PrivateNoUnderscore');
            }
        } catch (\Exception $e) {
            // ...
        }
    }
}

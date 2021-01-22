<?php
/**
 * Ensures method and function names are correct.
 *
 * @author    Greg Sherwood <gsherwood@squiz.net>
 * @copyright 2006-2015 Squiz Pty Ltd (ABN 77 084 670 600)
 * @license   https://github.com/squizlabs/PHP_CodeSniffer/blob/master/licence.txt BSD Licence
 */

namespace PHP_CodeSniffer\Standards\PEAR\Sniffs\NamingConventions;

use PHP_CodeSniffer\Files\File;
use PHP_CodeSniffer\Sniffs\AbstractScopeSniff;
use PHP_CodeSniffer\Util\Common;
use PHP_CodeSniffer\Util\Tokens;

class MethodNameContainsNumbersSniff extends AbstractScopeSniff
{

    /**
     * A list of all PHP magic methods.
     *
     * @var array
     */
    protected $magicMethods = [
        'construct'   => true,
        'destruct'    => true,
        'call'        => true,
        'callstatic'  => true,
        'get'         => true,
        'set'         => true,
        'isset'       => true,
        'unset'       => true,
        'sleep'       => true,
        'wakeup'      => true,
        'serialize'   => true,
        'unserialize' => true,
        'tostring'    => true,
        'invoke'      => true,
        'set_state'   => true,
        'clone'       => true,
        'debuginfo'   => true,
    ];

    /**
     * A list of all PHP magic functions.
     *
     * @var array
     */
    protected $magicFunctions = ['autoload' => true];


    /**
     * Constructs a PEAR_Sniffs_NamingConventions_ValidFunctionNameSniff.
     */
    public function __construct()
    {
        parent::__construct(Tokens::$ooScopeTokens, [T_FUNCTION], true);

    }//end __construct()


    /**
     * Processes the tokens within the scope.
     *
     * @param \PHP_CodeSniffer\Files\File $phpcsFile The file being processed.
     * @param int                         $stackPtr  The position where this token was
     *                                               found.
     * @param int                         $currScope The position of the current scope.
     *
     * @return void
     */
    protected function processTokenWithinScope(File $phpcsFile, $stackPtr, $currScope)
    {
        $tokens = $phpcsFile->getTokens();

        // Determine if this is a function which needs to be examined.
        $conditions = $tokens[$stackPtr]['conditions'];
        end($conditions);
        $deepestScope = key($conditions);
        if ($deepestScope !== $currScope) {
            return;
        }

        $methodName = $phpcsFile->getDeclarationName($stackPtr);
        if ($methodName === null) {
            // Ignore closures.
            return;
        }

        if (preg_match('/\d/',$methodName) === 1){
            $warning = 'Method name "%s" contains numbers but this is discouraged';
            $data    = [$methodName];
            $phpcsFile->addWarning($warning, $stackPtr, 'ContainsNumbers', $data);
        }
    }//end processTokenWithinScope()


    /**
     * Processes the tokens outside the scope.
     *
     * @param \PHP_CodeSniffer\Files\File $phpcsFile The file being processed.
     * @param int                         $stackPtr  The position where this token was
     *                                               found.
     *
     * @return void
     */
    protected function processTokenOutsideScope(File $phpcsFile, $stackPtr)
    {

    }//end processTokenOutsideScope()


}//end class

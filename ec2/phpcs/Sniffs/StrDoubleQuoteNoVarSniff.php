<?php
/**
 * Checks that two strings are not concatenated together; suggests using one string instead.
 *
 * @author    Greg Sherwood <gsherwood@squiz.net>
 * @copyright 2006-2015 Squiz Pty Ltd (ABN 77 084 670 600)
 * @license   https://github.com/squizlabs/PHP_CodeSniffer/blob/master/licence.txt BSD Licence
 */

namespace PHP_CodeSniffer\Standards\Generic\Sniffs\Strings;

use PHP_CodeSniffer\Files\File;
use PHP_CodeSniffer\Sniffs\Sniff;

class StrDoubleQuoteNoVarSniff implements Sniff
{
    public $supportedTokenizers = [
        'PHP',
    ];

    public $allowMultiline = false;

    public function register()
    {
        return [
            T_CONSTANT_ENCAPSED_STRING
        ];
    }

    public function process(File $phpcsFile, $stackPtr)
    {
        $tokens = $phpcsFile->getTokens();
        $content = $tokens[$stackPtr]['content'];
        $isDoubleQuote = substr($content, 0, 1) === '"';
        $hasVariables = strpos($content, '$') !== false;

        if ($isDoubleQuote && !$hasVariables) {
            $error = 'Use single quotes if you are not using variable expansion inside a string';
            $phpcsFile->addWarning($error, $stackPtr, 'Found');
        }
    }
}

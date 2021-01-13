<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */

use Symfony\Component\Translation\Translator;

/**
 * Smarty plugin
 *
 * Type:     modifier<br>
 * Name:     u<br>
 * Date:     Dec 28, 2010<br>
 * Purpose:  URL エンコードを行った後で、HTML エスケープを行う<br>
 * Example:  {$text|u}
 * @author   Seasoft 塚田将久
 * @param string $string
 * @return string
 */
function smarty_modifier_trans($string)
{
    $translator = new Translator('en');

    return $translator->trans($string);
}

<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */

/**
 * Smarty plugin
 *
 * Type:     modifier<br>
 * Name:     trans<br>
 * Date:     Dec 28, 2010<br>
 * Purpose:  Translate words using Symfony's translation package
 * Example:  {$text|trans}
 * @author   Scuti
 * @param string $string
 * @return string
 */
function smarty_modifier_trans($string)
{
    $translator = SC_Helper_Translation_Ex::getSingletonInstance();

    return $translator->trans($string);
}
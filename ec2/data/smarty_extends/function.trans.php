<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */

use Symfony\Component\Translation\Translator;

/**
 * Smarty {trans} function plugin
 *
 * Type:       function<br>
 * Name:       trans<br>
 * Date:       2021/01/13<br>
 * Input:
 * <pre>
 *           - string     (required) - string to translate
 * </pre>
 * Examples:
 * <pre>
 * {trans string="hello_world"}
 * </pre>
 * @author     Scuti
 * @param string
 * @param Smarty
 * @return string
 */

function smarty_function_trans($values, &$smarty)
{
    $translator = new Translator('en');

    return $values['string'];
}

<?php
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 *
 * http://www.ec-cube.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */

use Symfony\Component\Translation\Translator;
use Symfony\Component\Translation\Loader\PhpFileLoader;

/**
 * Helper class for translations.
 *
 * @package Translation
 * @version $Id$
 */
class SC_Helper_Translation
{
    private static $instance = null;

    public static function load()
    {
        $translator = new Translator(UI_LANG);
        $loader = new PhpFileLoader();
        $translator->addLoader('eccube', $loader);
        $translator->addResource('eccube',
            DATA_REALDIR . '/translations/messages.' . UI_LANG . '.php',
            UI_LANG
        );

        self::setSingletonInstance($translator);
    }

    public static function getSingletonInstance()
    {
        if (self::$instance === null) {
            self::$instance = new SC_Helper_Translation();
        }

        return self::$instance;
    }

    public static function setSingletonInstance($instance)
    {
        self::$instance = $instance;
    }
}

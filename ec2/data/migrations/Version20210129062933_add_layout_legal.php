<?php

declare(strict_types=1);

namespace MyProject\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

final class Version20210129062933_add_layout_legal extends AbstractMigration
{
    public function getDescription() : string
    {
        return 'Add layout for Legal page';
    }

    public function up(Schema $schema) : void
    {
        $this->addSql('INSERT into dtb_pagelayout'
        . '(device_type_id, page_id, page_name, url, filename, header_chk, footer_chk, edit_flg)'
        . 'VALUES (10,30,"特定商取引法に基づく表示","legal/index.php","legal/index",1,1,2)'
        );
    }

    public function down(Schema $schema) : void
    {
        $this->addSql('REMOVE FROM dtb_pagelayout'
        . 'WHERE device_type_id = 10'
        . 'AND page_id = 30'
        );
    }
}

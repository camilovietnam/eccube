<?php

declare(strict_types=1);

namespace MyProject\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210130045734_add_page_artists extends AbstractMigration
{
    public function getDescription() : string
    {
        return 'Add layout for artists page';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('INSERT into dtb_pagelayout'
        . '(device_type_id, page_id, page_name, url, filename, header_chk, footer_chk, edit_flg)'
        . 'VALUES (10,31,"Artists List","artists/index.php","artists/index",1,1,2)'
        );
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('REMOVE FROM dtb_pagelayout'
        . 'WHERE device_type_id = 10'
        . 'AND page_id = 31'
        );
    }
}

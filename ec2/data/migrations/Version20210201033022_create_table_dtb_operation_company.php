<?php

declare(strict_types=1);

namespace MyProject\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210201033022_create_table_dtb_operation_company extends AbstractMigration
{
    public function getDescription() : string
    {
        return '運営会社を管理するテーブル';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE dtb_operation_company ('
            . 'operating_company_id	int,'
            . 'operating_company_name	text,'
            . 'zip	text,'
            . 'pref	text,'
            . 'addr01	text,'
            . 'addr02	text,'
            . 'addr03	text,'
            . 'tel	text,'
            . 'note	text,'
            . 'create_date	timestamp,'
            . 'update_date	timestamp,'
            . 'delete_flg	smallint'
            . ')'
        );
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE dtb_operation_company');
    }
}

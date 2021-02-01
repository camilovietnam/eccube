<?php

declare(strict_types=1);

namespace MyProject\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

final class Version20210201043844_create_dtb_official_store extends AbstractMigration
{
    public function getDescription() : string
    {
        return '公式ストアを管理するテーブル';
    }

    public function up(Schema $schema) : void
    {
        $this->addSql('CREATE TABLE dtb_official_store ('
            . 'official_store_id	int,'
            . 'PRIMARY KEY (official_store_id),'
            . 'official_store_name	text,'
            . 'official_store_url	text,'
            . 'operating_company_id	int,'
            . 'person_in_charge	int,'
            . 'product_url	text,'
            . 'prd_public_open_date	timestamp,'
            . 'prd_public_close_date	timestamp,'
            . 'public_status	smallint,'
            . 'note	text,'
            . 'create_date	timestamp,'
            . 'update_date	timestamp,'
            . 'delete_flg	smallint'
            . ')'
        );
    }

    public function down(Schema $schema) : void
    {
        $this->addSql('DROP TABLE dtb_official_store');
    }
}

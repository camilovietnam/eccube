<?php

declare(strict_types=1);

namespace MyProject\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210201040155_create_table_dtb_official_store_artist extends AbstractMigration
{
    public function getDescription() : string
    {
        return '公式ストアとアーティストの紐付けテーブル';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE dtb_official_store_artist ('
            . 'official_store_id	int,'
            . 'artist_id	int,'
            . 'create_date	timestamp,'
            . 'update_date	timestamp,'
            . 'delete_flg	smallint'
            . ')'
        );
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE dtb_official_store_artist');
    }
}

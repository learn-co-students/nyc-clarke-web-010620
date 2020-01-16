# Intro to ActiveRecord

## SWBATs
- [ ] Use `rake` commands from ActiveRecord to automatically create the right files
- [ ] Identify ActiveRecord naming conventions
- [ ] Use ActiveRecord to setup a one-to-many relationship
- [ ] Begin settting up a CLI project with ActiveRecord


### Migrations
- Migrations are used to setup your database
- They create tables
- They drop tables
- They alter columns
- They add columns

Create Migration: ` rake db:create_migration NAME=create_pirates`
Run Migration: `rake db:migrate`


1. Create your migrations
  - `rake db:create_migration NAME=create_table`
2. In your migration, use `create_table` to build your table and its attributes
3. Run the migration
  - `rake db:migrate`
DROP TABLE IF EXISTS ability_ids;
DROP TABLE IF EXISTS ability_upgrades;
DROP TABLE IF EXISTS chat;
DROP TABLE IF EXISTS cluster_regions;
DROP TABLE IF EXISTS hero_names;
DROP TABLE IF EXISTS item_ids;
DROP TABLE IF EXISTS match;
DROP TABLE IF EXISTS match_outcomes;
DROP TABLE IF EXISTS objectives;
DROP TABLE IF EXISTS patch_dates;
DROP TABLE IF EXISTS player_ratings;
DROP TABLE IF EXISTS player_time;
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS purchase_log;
DROP TABLE IF EXISTS teamfights;
DROP TABLE IF EXISTS teamfights_players;
DROP TABLE IF EXISTS test_labels;
DROP TABLE IF EXISTS test_player;

CREATE TABLE ability_ids(
    ability_id      BIGINT NOT NULL,
    ability_name    VARCHAR(50)
);

CREATE TABLE ability_upgrades(
    ability         BIGINT NOT NULL,
    level           BIGINT,
    time            BIGINT,
    player_slot     BIGINT,
    match_id        BIGINT 
);

CREATE TABLE chat(
    match_id        BIGINT NOT NULL,
    key             VARCHAR(50),
    slot            BIGINT,
    time            BIGINT,
    uint            VARCHAR(50)
);

CREATE TABLE cluster_regions(
    cluster         BIGINT NOT NULL,
    region          VARCHAR(50)
);

CREATE TABLE hero_names(
    name            VARCHAR(50) NOT NULL,
    hero_id         BIGINT,
    localized_name  VARCHAR(50)
);

CREATE TABLE item_ids(
    item_id         BIGINT NOT NULL,
    item_name       VARCHAR(50)
);

CREATE TABLE match(
    match_id                BIGINT NOT NULL,
    start_time              BIGINT,
    duration                BIGINT,
    tower_status_radiant    BIGINT,
    tower_status_dire       BIGINT,
    barracks_status_dire    BIGINT,
    barracks_status_radiant BIGINT,
    first_blood_time        BIGINT,
    game_mode               BIGINT,
    radiant_win             BOOLEAN,
    negatives_votes         BIGINT,
    positive_votes          BIGINT,
    cluster                 BIGINT
);

CREATE TABLE match_outcomes(
    match_id        BIGINT NOT NULL,
    account_id_0    BIGINT,
    account_id_1    BIGINT,
    account_id_2    BIGINT,
    account_id_3    BIGINT,
    account_id_4    BIGINT,
    start_time      BIGINT,
    parser_version  BIGINT,
    win             BIGINT,
    rad             BIGINT
);

CREATE TABLE objectives(
    match_id        BIGINT NOT NULL,
    key             DOUBLE PRECISION,
    player1         BIGINT,
    player2         BIGINT,
    slot            DOUBLE PRECISION,
    subtype         VARCHAR(50),
    team            DOUBLE PRECISION,
    time            BIGINT NOT NULL,
    value           BIGINT NOT NULL
);

CREATE TABLE patch_dates(
    patch_date      VARCHAR(50) NOT NULL,
    name            DOUBLE PRECISION
);

CREATE TABLE player_ratings(
    account_id      BIGINT NOT NULL,
    total_wins      BIGINT,
    total_matches   BIGINT,
    trueskill_mu    DOUBLE PRECISION,
    trueskill_sigma DOUBLE PRECISION
);

CREATE TABLE player_time(
    match_id        BIGINT NOT NULL,
    times           BIGINT,
    gold_t_0        BIGINT,
    lh_t_0          BIGINT,
    xp_t_0          BIGINT,
    gold_t_1        BIGINT,
    lh_t_1          BIGINT,
    xp_t_1          BIGINT,
    gold_t_2        BIGINT,
    lh_t_2          BIGINT,
    xp_t_2          BIGINT,
    gold_t_3        BIGINT,
    lh_t_3          BIGINT,
    xp_t_3          BIGINT,
    gold_t_4        BIGINT,
    lh_t_4          BIGINT,
    xp_t_4          BIGINT,
    gold_t_128      BIGINT,
    lh_t_128        BIGINT,
    xp_t_128        BIGINT,
    gold_t_129      BIGINT,
    lh_t_129        BIGINT,
    xp_t_129        BIGINT,
    gold_t_130      BIGINT,
    lh_t_130        BIGINT,
    xp_t_130        BIGINT,
    gold_t_131      BIGINT,
    lh_t_131        BIGINT,
    xp_t_131        BIGINT,
    gold_t_132      BIGINT,
    lh_t_132        BIGINT,
    xp_t_132        BIGINT
);

CREATE TABLE players(
    match_id                            BIGINT NOT NULL,
    account_id                          BIGINT,
    hero_id                             BIGINT,
    player_slot                         BIGINT,
    gold                                BIGINT,
    gold_spent                          BIGINT,
    gold_per_min                        BIGINT,
    xp_per_min                          BIGINT,
    kills                               BIGINT,
    deaths                              BIGINT,
    assists                             BIGINT,
    denies                              BIGINT,
    last_hits                           BIGINT,
    stuns                               DOUBLE PRECISION,
    hero_damage                         BIGINT,
    hero_healing                        BIGINT,
    tower_damage                        BIGINT,
    item_0                              BIGINT,
    item_1                              BIGINT,
    item_2                              BIGINT,
    item_3                              BIGINT,
    item_4                              BIGINT,
    item_5                              BIGINT,
    level                               BIGINT,
    leaver_status                       BIGINT,
    xp_hero                             DOUBLE PRECISION,
    xp_creep                            DOUBLE PRECISION,
    xp_roshan                           DOUBLE PRECISION,
    xp_other                            DOUBLE PRECISION,
    gold_other                          DOUBLE PRECISION,
    gold_death                          DOUBLE PRECISION,
    gold_buyback                        DOUBLE PRECISION,
    gold_abandon                        DOUBLE PRECISION,
    gold_sell                           DOUBLE PRECISION,
    gold_destroying_structure           DOUBLE PRECISION,
    gold_killing_heros                  DOUBLE PRECISION,
    gold_killing_creeps                 DOUBLE PRECISION,
    gold_killing_roshan                 DOUBLE PRECISION,
    gold_killing_couriers               DOUBLE PRECISION,
    unit_order_none                     VARCHAR(50),
    unit_order_move_to_position         DOUBLE PRECISION,
    unit_order_move_to_target           DOUBLE PRECISION,
    unit_order_attack_move              DOUBLE PRECISION,
    unit_order_attack_target            DOUBLE PRECISION,
    unit_order_cast_position            DOUBLE PRECISION,
    unit_order_cast_target              DOUBLE PRECISION,
    unit_order_cast_target_tree         DOUBLE PRECISION,
    unit_order_cast_no_target           DOUBLE PRECISION,
    unit_order_cast_toggle              DOUBLE PRECISION,
    unit_order_hold_position            DOUBLE PRECISION,
    unit_order_train_ability            DOUBLE PRECISION,
    unit_order_drop_item                DOUBLE PRECISION,
    unit_order_give_item                DOUBLE PRECISION,
    unit_order_pickup_item              DOUBLE PRECISION,
    unit_order_pickup_rune              DOUBLE PRECISION,
    unit_order_purchase_item            DOUBLE PRECISION,
    unit_order_sell_item                DOUBLE PRECISION,
    unit_order_disassemble_item         DOUBLE PRECISION,
    unit_order_move_item                DOUBLE PRECISION,
    unit_order_cast_toggle_auto         DOUBLE PRECISION,
    unit_order_stop                     DOUBLE PRECISION,
    unit_order_taunt                    VARCHAR(50),
    unit_order_buyback                  DOUBLE PRECISION,
    unit_order_glyph                    DOUBLE PRECISION,
    unit_order_eject_item_from_stash    DOUBLE PRECISION,
    unit_order_cast_rune                VARCHAR(50),
    unit_order_ping_ability             DOUBLE PRECISION,
    unit_order_move_to_direction        DOUBLE PRECISION,
    unit_order_patrol                   VARCHAR(50),
    unit_order_vector_target_position   VARCHAR(50),
    unit_order_radar                    VARCHAR(50),
    unit_order_set_item_combine_lock    VARCHAR(50),
    unit_order_continue                 VARCHAR(50)
);

CREATE TABLE purchase_log(
    item_id         BIGINT NOT NULL,
    time            BIGINT,
    player_slot     BIGINT,
    match_id        BIGINT
);

CREATE TABLE teamfights(
    match_id        BIGINT NOT NULL,
    start           BIGINT,
    "end"             BIGINT,
    last_death      BIGINT,
    deaths          BIGINT
);

CREATE TABLE teamfights_players(
    match_id        BIGINT NOT NULL,
    player_slot     BIGINT,
    buybacks        BIGINT,
    damage          BIGINT,
    deaths          BIGINT,
    gold_delta      BIGINT,
    xp_end          BIGINT,
    xp_start        BIGINT
);

CREATE TABLE test_labels(
    match_id        BIGINT NOT NULL,
    radiant_win     BIGINT
);

CREATE TABLE test_player(
    match_id        BIGINT NOT NULL,
    account_id      BIGINT,
    hero_id         BIGINT,
    player_slot     BIGINT
);

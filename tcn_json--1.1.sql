/* contrib/tcn_json/tcn_json--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION tcn_json" to load this file. \quit

CREATE FUNCTION triggered_change_notification_json()
RETURNS pg_catalog.trigger
AS 'MODULE_PATHNAME'
LANGUAGE C;

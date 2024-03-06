-- Table: public.weather_data

-- DROP TABLE IF EXISTS public.weather_data;

CREATE TABLE IF NOT EXISTS public.weather_data
(
    id integer NOT NULL DEFAULT nextval('weather_data_id_seq'::regclass),
    station character varying(20) COLLATE pg_catalog."default",
    date date,
    latitude numeric,
    longitude numeric,
    elevation numeric,
    name character varying(100) COLLATE pg_catalog."default",
    temp numeric,
    temp_attributes integer,
    dewp numeric,
    dewp_attributes integer,
    slp numeric,
    slp_attributes integer,
    stp numeric,
    stp_attributes integer,
    visib numeric,
    visib_attributes integer,
    wdsp numeric,
    wdsp_attributes integer,
    mxspd numeric,
    gust numeric,
    max numeric,
    max_attributes character varying(10) COLLATE pg_catalog."default",
    min numeric,
    min_attributes character varying(10) COLLATE pg_catalog."default",
    prcp numeric,
    prcp_attributes character varying(10) COLLATE pg_catalog."default",
    sndp numeric,
    frshtt integer,
    CONSTRAINT weather_data_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.weather_data
    OWNER to postgres;
-- Index: station_date_index

-- DROP INDEX IF EXISTS public.station_date_index;

CREATE INDEX IF NOT EXISTS station_date_index
    ON public.weather_data USING btree
    (station COLLATE pg_catalog."default" ASC NULLS LAST, date ASC NULLS LAST)
    TABLESPACE pg_default;
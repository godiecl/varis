/*
 * Copyright (c) 2019 FIC-R Mitigacion del Riesgo Asociado a Procesos Volcanicos en la Región de Antofagasta (BIP 30488832-0)
 */
#pragma once

/**
 * The ZeroIce Model
 */
["java:package:cl.cklar.varis", "cs:namespace:Varis"]
module Zeroice {

    /**
     * The Model
     */
    module Model {

        /**
         * The Dataset
         */
        ["cs:property"]
        class Dataset {

            // Unique name: LC08_L1TP_020050_20180201_20180220_01_T1
            string gid;

            // Source: LC08_L1TP_020050_20180201_20180220_01_T1.tar.tg
            string source;

            // Name: LC08_L1TP_020050_20180201_20180220_01_T1
            string name;

            // 5592 bytes
            long size;

            // Date
            string created;

            // Date
            string uploaded;

        };

        /**
         * List of Dataset
         */
        ["cs:generic:List"]
        sequence<Dataset> Datasets;

    };

    /**
     * Controllers
     */
    module Controller {

        /**
         * Operaciones del Sistema
         */
        interface UploadServer {

            /**
             * List of Dataset
             */
             idempotent Model::Datasets getDatasets();

        };

    };

};

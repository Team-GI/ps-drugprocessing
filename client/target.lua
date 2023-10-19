CreateThread(function()
    exports.ox_target:addBoxZone({
        name = "chemmenu",
        coords = vector3(3535.66, 3661.69, 28.12),
        size = vec3(3, 3, 3),
        rotation = 350.0,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:chemicalmenu",
                icon = "fas fa-vials",
                label = Lang:t("target.chemmenu"),
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "methprocess",
        coords = vector3(978.22, -147.1, -48.53),
        size = vec3(2.5, 2.5, 3),
        rotation = 223.98,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ProcessChemicals",
                icon = "fas fa-vials",
                label = Lang:t("target.methprocess"),
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "methtempup",
        coords =  vector3(982.56, -145.59, -49.0),
        size = vec3(2, 1.2, 3),
        rotation =  0,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ChangeTemp",
                icon = "fas fa-temperature-empty",
                label = Lang:t("target.methtempup"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "methtempdown",
        coords =  vector3(979.59, -144.14, -49.0),
        size = vec3(0.6, 1.2, 3),
        heading = 354,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ChangeTemp2",
                icon = "fas fa-temperature-full",
                label = Lang:t("target.methtempdown"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "methbagging",
        coords =   vector3(987.44, -140.5, -49.0),
        size = vec3(0.6, 0.8, 3),
        heading = 354,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ProcessProduct",
                icon = "fas fa-box",
                label = Lang:t("target.bagging"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "methkeypad",
        coords =    vector3(969.04, -146.17, -46.4),
        size = vec3(0.5, 0.3, 3),
        heading = 0,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitLab",
                icon = "fas fa-lock",
                label = Lang:t("target.keypad"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "cokeleave",
        coords =    vector3(1088.56, -3187.02, -38.67),
        size = vec3(1.1, 1.1, 3),
        heading = 0,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitCWarehouse",
                icon = "fas fa-lock",
                label = Lang:t("target.keypad"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "cokeleafproc",
        coords =    vector3(1086.2, -3194.9, -38.99),
        size = vec3(2.6, 1.5, 3),
        heading = 0,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ProcessCocaFarm",
                icon = "fas fa-scissors",
                label = Lang:t("target.cokeleafproc"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "cokepowdercut",
        coords =    vector3(1092.89, -3195.78, -38.99),
        size = vec3(7.7, 1.5, 3),
        heading = 0,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ProcessCocaPowder",
                icon = "fas fa-weight-scale",
                label = Lang:t("target.cokepowdercut"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "cokebricked",
        coords =  vector3(1100.51, -3199.46, -38.93),
        size = vec3(2.7, 1.1, 3),
        heading = 90,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ProcessBricks",
                icon = "fas fa-weight-scale",
                label = Lang:t("target.bagging"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "weedproces",
        coords =  vector3(1038.37, -3206.06, -38.17),
        size = vec3(2.5, 1.0, 3),
        heading = 90,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:processWeed",
                icon = "fas fa-envira",
                label = Lang:t("target.weedproces"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "weedkeypad",
        coords =  vector3(1066.51, -3183.44, -39.16),
        size = vec3(0.4, 1.6, 3),
        heading = 90,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitWWarehouse",
                icon = "fas fa-lock",
                label = Lang:t("target.keypad"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "heroinproces",
        coords =  vector3(1384.9, -2080.61, 52.21),
        size = vec3(2.6, 2.6, 3),
        heading = 223.98,
        debug = true,
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:processHeroin",
                icon = "fas fa-envira",
                label = Lang:t("target.heroinproces"),
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "heroinproces",
        coords =  vector3(-679.77, 5800.7, 17.33),
        size = vec3(1.1, 1.1, 3),
        heading=0.0,
        debug = true,
        options = {
            {
				type = "client",
				event = "ps-drugprocessing:processingThiChlo",
				icon = "fas fa-biohazard",
				label = Lang:t("target.process_thionyl_chloride"),
            }
        }
    })
    exports.ox_target:addBoxZone({
        name = "heroinproc",
        coords =  vector3(1413.7, -2041.77, 52.0),
        size = vec3(1.1, 1.1, 3),
        heading=0.0,
        debug = true,
        options = {
            {
                type = "client",
				event = "ps-drugprocessing:ProcessPoppy",
				icon = "fas fa-leaf",
				label = Lang:t("target.heroinproc"),
            }
        }
    })

end)

CreateThread(function()
    exports.ox_target:addModel("h4_prop_bush_cocaplant_01", {

        {
            type = "client",
            event = "ps-drugprocessing:pickCocaLeaves",
            icon = "fas fa-leaf",
            label = Lang:t("target.pickCocaLeaves"),
    },
    })
    exports.ox_target:addModel("prop_plant_01b", {

        {
            type = "client",
            event = "ps-drugprocessing:pickHeroin",
            icon = "fas fa-leaf",
            label = Lang:t("target.pickHeroin"),
    },
    })
    exports.ox_target:addModel("mw_weed_plant", {

        {
            type = "client",
            event = "ps-drugprocessing:pickWeed",
            icon = "fas fa-envira",
            label = Lang:t("target.pickWeed"),
    },
    })
    exports.ox_target:addModel("mw_sodium_barrel", {

        {
            type = "client",
            event = "ps-drugprocessing:pickSodium",
            icon = "fas fa-dna",
            label = Lang:t("target.pickSodium"),
    },
    })
    exports.ox_target:addModel("mw_sulfuric_barrel", {

        {
            type = "client",
            event = "ps-drugprocessing:pickSulfuric",
            icon = "fas fa-shield-virus",
            label = Lang:t("target.pickSulfuric"),
    },
    })
    exports.ox_target:addModel("mw_chemical_barrel", {

        {
            type = "client",
            event = "ps-drugprocessing:pickChemicals",
            icon = "fas fa-radiation",
            label = Lang:t("target.pickChemicals"),
    },
    })
    exports.ox_target:addModel("mw_hydro_barrel", {

        {
            type = "client",
            event = "ps-drugprocessing:client:hydrochloricacid",
            icon = "fas fa-radiation",
            label = Lang:t("target.hydrochloricacid"),
    },
    })
end)
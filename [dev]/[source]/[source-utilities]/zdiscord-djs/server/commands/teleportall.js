/**
 * This file is part of zdiscord.
 * Copyright (C) 2021 Tony/zfbx
 * source: <https://github.com/zfbx/zdiscord>
 *
 * This work is licensed under the Creative Commons
 * Attribution-NonCommercial-ShareAlike 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 */

module.exports = {
    name: "teleport-all",
    description: "teleport everyone",
    role: "god",

    options: [
        {
            type: "SUB_COMMAND",
            name: "coords",
            description: "teleport to specific coordinates",
            options: [
                {
                    name: "x",
                    description: "x coordinate",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "y",
                    description: "y coordinate",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "z",
                    description: "z coordinate",
                    required: true,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "preset",
            description: "teleport to a pre-specified location",
            options: [
                {
                    name: "location",
                    description: "location to teleport to",
                    required: true,
                    type: "STRING",
                    choices: [
                        { name: "Bệnh Viện", value: "benhvien" },
                        { name: "Đồn cảnh sát", value: "canhsat" },
                        { name: "Garage Trung tâm", value: "garatt" },
                    ],
                },
            ],
        },
    ],

    run: async (client, interaction, args) => {
        const locations = {
            "benhvien": [ 295.72, -581.86, 43.16 ],
            "canhsat": [ 227.11, -796.72, 30.63 ],
            "garatt": [ 655.67, -16.89, 82.84 ],
        };
        if (args.coords) {
            teleportEveryone(args.x, args.y, args.z);
            client.utils.log.info(`[${interaction.member.displayName}] Teleported EVERYONE to ${args.x}, ${args.y}, ${args.z}`);
            return interaction.reply({ content: "Teleported everyone.", ephemeral: false });
        } else if (args.preset) {
            teleportEveryone(locations[args.location][0], locations[args.location][1], locations[args.location][2]);
            client.utils.log.info(`[${interaction.member.displayName}] teleported EVERYONE to ${args.location}`);
            return interaction.reply({ content: `Everyone was teleported to ${args.location}`, ephemeral: false });
        }
    },
};

function teleportEveryone(x, y, z) {
    x = x.toFixed(2);
    y = y.toFixed(2);
    z = z.toFixed(2);
    emitNet(`${GetCurrentResourceName()}:teleport`, -1, x, y, z, false);
}

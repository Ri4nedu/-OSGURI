{
  "$GMRoom": "v1",
  "%Name": "room01",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {
      "name": "inst_A4234D1E",
      "path": "/home/ubuntu/osguri/rooms/room01/room01.yy"
    },
    {
      "name": "inst_9663BA79",
      "path": "/home/ubuntu/osguri/rooms/room01/room01.yy"
    },
    {
      "name": "inst_52026CC3",
      "path": "/home/ubuntu/osguri/rooms/room01/room01.yy"
    }
  ],
  "isDnd": false,
  "layers": [
    {
      "$GMRInstanceLayer": "",
      "%Name": "Instances",
      "depth": 0,
      "effectEnabled": true,
      "effectType": null,
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "instances": [
        {
          "$GMRInstance": "v4",
          "%Name": "inst_A4234D1E",
          "colour": 4294967295,
          "frozen": false,
          "hasCreationCode": false,
          "ignore": false,
          "imageIndex": 0,
          "imageSpeed": 1.0,
          "inheritCode": false,
          "inheritedItemId": null,
          "inheritItemSettings": false,
          "isDnd": false,
          "name": "inst_A4234D1E",
          "objectId": {
            "name": "obj_camera_manager",
            "path": "objects/obj_camera_manager/obj_camera_manager.yy"
          },
          "properties": [],
          "resourceType": "GMRInstance",
          "resourceVersion": "2.0",
          "rotation": 0.0,
          "scaleX": 1.0,
          "scaleY": 1.0,
          "x": 0.0,
          "y": 0.0
        },
        {
          "$GMRInstance": "v4",
          "%Name": "inst_9663BA79",
          "colour": 4294967295,
          "frozen": false,
          "hasCreationCode": true,
          "ignore": false,
          "imageIndex": 0,
          "imageSpeed": 1.0,
          "inheritCode": false,
          "inheritedItemId": null,
          "inheritItemSettings": false,
          "isDnd": false,
          "name": "inst_9663BA79",
          "objectId": {
            "name": "obj_ui_button",
            "path": "objects/obj_ui_button/obj_ui_button.yy"
          },
          "properties": [
            {
              "$GMOverriddenProperty": "v1",
              "%Name": "",
              "name": "",
              "objectId": {
                "name": "obj_ui_button",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "propertyId": {
                "name": "button_text",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "resourceType": "GMOverriddenProperty",
              "resourceVersion": "2.0",
              "value": "Play"
            },
            {
              "$GMOverriddenProperty": "v1",
              "%Name": "",
              "name": "",
              "objectId": {
                "name": "obj_ui_button",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "propertyId": {
                "name": "target_room",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "resourceType": "GMOverriddenProperty",
              "resourceVersion": "2.0",
              "value": "level1r1"
            }
          ],
          "resourceType": "GMRInstance",
          "resourceVersion": "2.0",
          "rotation": 0.0,
          "scaleX": 2.0,
          "scaleY": 2.0,
          "x": 683.0,
          "y": 350.0
        },
        {
          "$GMRInstance": "v4",
          "%Name": "inst_52026CC3",
          "colour": 4294967295,
          "frozen": false,
          "hasCreationCode": true,
          "ignore": false,
          "imageIndex": 0,
          "imageSpeed": 1.0,
          "inheritCode": false,
          "inheritedItemId": null,
          "inheritItemSettings": false,
          "isDnd": false,
          "name": "inst_52026CC3",
          "objectId": {
            "name": "obj_ui_button",
            "path": "objects/obj_ui_button/obj_ui_button.yy"
          },
          "properties": [
            {
              "$GMOverriddenProperty": "v1",
              "%Name": "",
              "name": "",
              "objectId": {
                "name": "obj_ui_button",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "propertyId": {
                "name": "button_text",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "resourceType": "GMOverriddenProperty",
              "resourceVersion": "2.0",
              "value": "Sair"
            },
            {
              "$GMOverriddenProperty": "v1",
              "%Name": "",
              "name": "",
              "objectId": {
                "name": "obj_ui_button",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "propertyId": {
                "name": "is_exit",
                "path": "objects/obj_ui_button/obj_ui_button.yy"
              },
              "resourceType": "GMOverriddenProperty",
              "resourceVersion": "2.0",
              "value": "True"
            }
          ],
          "resourceType": "GMRInstance",
          "resourceVersion": "2.0",
          "rotation": 0.0,
          "scaleX": 2.0,
          "scaleY": 2.0,
          "x": 683.0,
          "y": 500.0
        }
      ],
      "layers": [],
      "name": "Instances",
      "properties": [],
      "resourceType": "GMRInstanceLayer",
      "resourceVersion": "2.0",
      "userdefinedDepth": false,
      "visible": true
    },
    {
      "$GMRBackgroundLayer": "",
      "%Name": "Background",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 100,
      "effectEnabled": true,
      "effectType": null,
      "gridX": 64,
      "gridY": 64,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "name": "Background",
      "properties": [],
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "2.0",
      "spriteId": {
        "name": "spr_mainmenu",
        "path": "sprites/spr_mainmenu/spr_mainmenu.yy"
      },
      "stretch": true,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 0,
      "y": 0
    }
  ],
  "name": "room01",
  "parent": {
    "name": "MainMenu",
    "path": "folders/1Level/MainMenu.yy"
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1
  },
  "resourceType": "GMRoom",
  "resourceVersion": "2.0",
  "roomSettings": {
    "Height": 768,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1366
  },
  "sequenceId": null,
  "views": [
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    }
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false
  },
  "volume": 1.0
}
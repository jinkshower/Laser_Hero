return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 48,
  height = 27,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 6,
  nextobjectid = 38,
  properties = {},
  tilesets = {
    {
      name = "tiles",
      firstgid = 1,
      class = "",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 84,
      image = "//tiles.png",
      imagewidth = 672,
      imageheight = 256,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      wangsets = {},
      tilecount = 2688,
      tiles = {}
    },
    {
      name = "obejct",
      firstgid = 2689,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 42,
      image = "//tiles.png",
      imagewidth = 672,
      imageheight = 256,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 672,
      tiles = {
        {
          id = 433,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["wall"] = true
                }
              }
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 48,
      height = 27,
      id = 2,
      name = "Wall",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 3120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3120, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 3120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3120, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 3120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3120, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 3120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3120, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 3120, 0, 2040, 0,
        0, 2040, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 1700, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040, 0,
        0, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 2040, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Solid",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7.33333,
          y = 0.333333,
          width = 8.83333,
          height = 215.333,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 367.333,
          y = -0.666667,
          width = 8.83333,
          height = 215.333,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17.3333,
          y = 0.833333,
          width = 349.833,
          height = 6.33333,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17.8333,
          y = 208.333,
          width = 349.833,
          height = 6.33333,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16.3333,
          y = 104.833,
          width = 349.833,
          height = 6.33333,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 31.664,
          y = 7.86083,
          width = 96.4839,
          height = 15.2424,
          rotation = 90,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 366.73,
          y = 8.30616,
          width = 96.4839,
          height = 15.2424,
          rotation = 90,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352.525,
          y = 23.803,
          width = 320.328,
          height = 15.2424,
          rotation = 180,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = -43.5069,
          y = 80.1945,
          width = 320.328,
          height = 15.2424,
          rotation = 180,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 351.233,
          y = 104.301,
          width = 320.328,
          height = 15.2424,
          rotation = 180,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  }
}

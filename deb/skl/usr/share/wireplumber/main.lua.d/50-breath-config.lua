alsa_monitor.rules = {
  {
    matches = {
      {
        { "device.name", "matches", "alsa_card.*" },
      },
    },
    apply_properties = {
      ["api.alsa.use-acp"] = true,
      ["api.acp.auto-profile"] = false,
      ["api.acp.auto-port"] = false,
    },
  },
  {
    matches = {
      {
        { "node.name", "matches", "alsa_input.platform-skl_n88l25_m98357a.HiFi__hw_sklnau8825max_1__source" },
      },
    },
    apply_properties = {
      ["audio.format"]           = "S16LE",
    },
  },
}
  
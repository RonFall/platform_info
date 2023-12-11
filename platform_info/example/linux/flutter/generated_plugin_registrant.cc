//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <platform_info_linux/platform_info_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) platform_info_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PlatformInfoPlugin");
  platform_info_plugin_register_with_registrar(platform_info_linux_registrar);
}

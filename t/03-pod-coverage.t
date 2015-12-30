use Test::Pod::Coverage tests=>1;
my $d2_subs = qr{
    (
       ClassHooks |
       PluginKeyword |
       dancer_app |
       execute_plugin_hook |
       hook |
       keywords |
       on_plugin_import |
       plugin_args |
       plugin_setting |
       register |
       register_hook |
       register_plugin |
       request |
       var
    )
}x;
pod_coverage_ok(
    "Dancer2::Plugin::RoutePodCoverage",
    { also_private => [ $d2_subs ] },
    "Dancer2::Plugin::RoutePodCoverage",
);

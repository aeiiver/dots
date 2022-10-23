Function Get-Profiles {
    $profiles = $PROFILE | Select-Object *User*Host*
    $profiles = $($profiles -Replace '@{(.+)}', '$1').Split("; ")

    Foreach ($map in $profiles) {
        $property, $path = $map.Split("=")
        $file_exists = "$(Test-Path -Path "$path")".PadRight(5)

        $view = [PSCustomObject]@{
            Property = "$property"
            Created = "$file_exists"
            Path = "$path"
        }

        $view
    }
}

// import getModuleDependencies from "tailwindcss/lib/lib/getModuleDependencies";
module.exports = {
    plugins: [
        require('postcss-import'),
        require('postcss-flexbugs-fixes'),
        require('tailwindcss')('./app/javascript/css/tailwind.js'),
        require('autoprefixer')
    ]
}
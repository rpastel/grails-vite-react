<!doctype html>
<html>
<head>
    <title>Counter</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <!-- https://gsp.grails.org/latest/ref/Tags/if.html -->
    <g:if env="production">
        <asset:stylesheet src="counter-bundle.css" />       
    </g:if>
    
</head>
<body>

        <div id="app-counter"></div>
        
        <g:if env="development">
            <!-- For development, use Vite development server to serve the JS files -->
            <!-- https://vitejs.dev/guide/backend-integration.html -->
            <script type="module">
                import RefreshRuntime from 'http://localhost:5173/@react-refresh'
                RefreshRuntime.injectIntoGlobalHook(window)
                window.$RefreshReg$ = () => {}
                window.$RefreshSig$ = () => (type) => type
                window.__vite_plugin_react_preamble_installed__ = true
            </script>
            <!-- Source scripts from vite server -->
            <script type="module" src="http://localhost:5173/@vite/client"></script>
            <script type="module" src="http://localhost:5173/src/main/webapp/app-counter/main.jsx"></script>
        </g:if>

        <g:if env="production">
            <asset:javascript src="counter-bundle.js" />
        </g:if>

</body>
</html>
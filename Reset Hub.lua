<-- Interfaz personalizada para "Reset Hub"

object.Reset_Hub = instance.new("ScreenGui", {
    Name = "Mo Mo Be";
    Parent = game.CoreGui;
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
})

-- Crear el marco principal (caja de interfaz) en colores azul cielo y negro
object.Main = instance.new("Frame", {
    AnchorPoint = Vector2.new(0.5, 0.5);
    BackgroundColor3 = Color3.fromRGB(135, 206, 235);  -- Azul cielo
    BorderColor3 = Color3.fromRGB(0, 0, 0);  -- Negro
    BorderSizePixel = 2;  -- Borde negro
    Name = "Main";
    Parent = object.Reset_Hub;
    Position = UDim2.new(0.5, 0, 0.5, 0);  -- Centrado
    Size = UDim2.new(0, 380, 0, 200);
})

object.UICorner = instance.new("UICorner", {
    CornerRadius = UDim.new(0, 5);  -- Bordes redondeados
    Parent = object.Main;
})

-- Título personalizado de "Reset Hub"
object.TitleLabel = instance.new("TextLabel", {
    BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    BackgroundTransparency = 1.0;  -- Fondo transparente
    BorderColor3 = Color3.fromRGB(0, 0, 0);  -- Sin borde
    BorderSizePixel = 0;
    Font = Enum.Font.GothamBold;  -- Fuente en negrita
    Parent = object.Main;
    Position = UDim2.new(0, 0, 0.05, 0);  -- Posición ligeramente hacia abajo
    Size = UDim2.new(1, 0, 0.2, 0);
    Text = "<font color='rgb(0, 0, 255)'>Reset</font> <font color='rgb(255, 165, 0)'>Hub</font>";  -- "Reset" en azul y "Hub" en amarillo anaranjado
    TextColor3 = Color3.fromRGB(255, 255, 255);  -- Color del texto en blanco
    TextSize = 30.0;  -- Tamaño del texto grande
    RichText = true;  -- Permitir colores en el texto
})

-- Cuadro de información adicional
object.Desc = instance.new("TextLabel", {
    BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    BackgroundTransparency = 1.000;
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Font = Enum.Font.Gotham;
    Name = "Desc";
    Parent = object.Main;
    Position = UDim2.new(0.1, 0, 0.4, 0);
    Size = UDim2.new(0.8, 0, 0.2, 0);  -- Más pequeño que el título
    Text = "Welcome to Reset Hub! Script is loading...";  -- Texto de bienvenida
    TextColor3 = Color3.fromRGB(61, 71, 85);
    TextSize = 16.000;
})

-- Botón oculto que simula la carga sin necesidad de key
object.LoadButton = instance.new("TextButton", {
    BackgroundColor3 = Color3.fromRGB(0, 0, 0);  -- Fondo negro
    BorderColor3 = Color3.fromRGB(135, 206, 235);  -- Borde azul cielo
    BorderSizePixel = 2;
    Font = Enum.Font.Gotham;
    Name = "LoadButton";
    Parent = object.Main;
    Position = UDim2.new(0.3, 0, 0.7, 0);  -- Ubicado más abajo
    Size = UDim2.new(0.4, 0, 0.15, 0);  -- Tamaño adecuado para el botón
    Text = "Load Script";  -- Texto del botón
    TextColor3 = Color3.fromRGB(255, 255, 255);  -- Texto blanco
    TextSize = 18.000;
})

-- Función que se activa al hacer clic en el botón para ejecutar el script
object.LoadButton.MouseButton1Click:Connect(function()
    print("Script is now loading...")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/La-Granja882/GOOD/refs/heads/main/Reset%20Main.lua"))()

library(timevis)

create_content <- function(image_url, text) {
  sprintf('<div style="display: flex; align-items: center; gap: 10px; max-width: 400px;">
           <div style="width: 50px; height: 50px; overflow: hidden; border-radius: 5px; flex-shrink: 0;">
             <img src="%s" style="width: 100%%; height: 100%%; object-fit: contain;">
           </div>
           <span style="font-family: Helvetica, sans-serif; font-size: 14px; flex-grow: 1;">%s</span>
          </div>', image_url, text)
}


data <- data.frame(
  id = 1:15,
  content = c(
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/4/47/OXO_on_EDSAC_%28en%29.svg/100px-OXO_on_EDSAC_%28en%29.svg.png", "OXO and Tennis for Two - First computer-mediated games"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/f/f8/Pong.png/100px-Pong.png", "Pong released in arcades"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/1/1b/Magnavox-Odyssey-Console-Set.png/100px-Magnavox-Odyssey-Console-Set.png", "Home version of Pong & Magnavox Odyssey - First home consoles"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/f/f8/Atari_ET_dump-2.jpg/100px-Atari_ET_dump-2.jpg", "Video Game Crash of 1983 - E.T. game failure"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.png/100px-NES-Console-Set.png", "Nintendo Entertainment System (NES) launches"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/f/f4/Game-Boy-FL.png/100px-Game-Boy-FL.png", "Nintendo GameBoy - Birth of handheld gaming market"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/3/31/SNES-Mod1-Console-Set.png/100px-SNES-Mod1-Console-Set.png", "Super Nintendo Entertainment System launches"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/9/95/PSX-Console-wController.png/100px-PSX-Console-wController.png", "Sony PlayStation launches"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/c/c2/Xbox-Console-Set.png/100px-Xbox-Console-Set.png", "Microsoft Xbox launches with Xbox Live"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/100px-Steam_icon_logo.svg.png", "Steam platform launches"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/d/d3/PS3Slim_PlayStation_3.png/100px-PS3Slim_PlayStation_3.png", "PlayStation 3 launches with Blu-Ray"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/d/d9/IPhone_1st_Gen.svg/100px-IPhone_1st_Gen.svg.png", "iPhone launches - Beginning of mobile gaming era"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/3/3a/Twitch_mit_Glitch.svg/100px-Twitch_mit_Glitch.svg.png", "Twitch streaming platform launches"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/0/01/Discord_logo_%282021%29.svg/100px-Discord_logo_%282021%29.svg.png", "Discord launches"),
    create_content("https://cdn.wikimedia.org/wikipedia/commons/thumb/8/83/Mobile_gaming_banner.jpg/100px-Mobile_gaming_banner.jpg", "Mobile gaming surpasses PC and console combined")
  ),
  start = c(
    "1950-01-01",
    "1972-01-01",
    "1972-12-01",
    "1983-01-01",
    "1985-01-01",
    "1989-01-01",
    "1990-01-01",
    "1994-01-01",
    "2001-11-01",
    "2003-01-01",
    "2006-11-01",
    "2007-01-01",
    "2007-06-01",
    "2015-01-01",
    "2023-01-01"
  ),
  group = c(
    "Early Era",
    "Arcade Era",
    "Home Console Era",
    "Industry Crisis",
    "Nintendo Era",
    "Handheld Gaming",
    "Console Wars",
    "Console Wars",
    "Online Gaming",
    "Digital Distribution",
    "Modern Era",
    "Mobile Gaming",
    "Gaming Culture",
    "Gaming Culture",
    "Mobile Dominance"
  ),
  style = c(
    "background-color: rgba(44, 62, 80, 0.1); border-color: #2C3E50;",
    "background-color: rgba(231, 76, 60, 0.1); border-color: #E74C3C;",
    "background-color: rgba(52, 152, 219, 0.1); border-color: #3498DB;",
    "background-color: rgba(192, 57, 43, 0.1); border-color: #C0392B;",
    "background-color: rgba(230, 126, 34, 0.1); border-color: #E67E22;",
    "background-color: rgba(22, 160, 133, 0.1); border-color: #16A085;",
    "background-color: rgba(142, 68, 173, 0.1); border-color: #8E44AD;",
    "background-color: rgba(142, 68, 173, 0.1); border-color: #8E44AD;",
    "background-color: rgba(41, 128, 185, 0.1); border-color: #2980B9;",
    "background-color: rgba(39, 174, 96, 0.1); border-color: #27AE60;",
    "background-color: rgba(52, 73, 94, 0.1); border-color: #34495E;",
    "background-color: rgba(26, 188, 156, 0.1); border-color: #1ABC9C;",
    "background-color: rgba(155, 89, 182, 0.1); border-color: #9B59B6;",
    "background-color: rgba(155, 89, 182, 0.1); border-color: #9B59B6;",
    "background-color: rgba(26, 188, 156, 0.1); border-color: #1ABC9C;"
  )
)

data$description <- c(
  "First computer games appear, simulating real-world games like tic-tac-toe and tennis",
  "Pong becomes one of the first commercially successful arcade games",
  "Video games enter homes through TV-connected consoles",
  "Market oversaturation and poor quality games lead to industry crash",
  "Nintendo revitalizes market with quality control and copy protection",
  "Nintendo creates new market segment with portable gaming device",
  "Console market continues to grow with improved hardware",
  "Sony enters gaming market, introduces CD-ROM games",
  "Microsoft enters console market, popularizes online console gaming",
  "Valve revolutionizes PC gaming with digital distribution",
  "Gaming consoles become entertainment hubs with Blu-Ray support",
  "Smartphones create new platform for casual gaming",
  "Game streaming becomes mainstream entertainment",
  "Gaming-focused communication platform launches",
  "Mobile gaming revenue exceeds traditional gaming platforms"
)

unique_groups <- unique(data$group)
unique_styles <- c(
    "background-color: #2C3E50; color: white;",  # Early Era
    "background-color: #E74C3C; color: white;",  # Arcade Era
    "background-color: #3498DB; color: white;",  # Home Console Era
    "background-color: #C0392B; color: white;",  # Industry Crisis
    "background-color: #E67E22; color: white;",  # Nintendo Era
    "background-color: #16A085; color: white;",  # Handheld Gaming
    "background-color: #8E44AD; color: white;",  # Console Wars
    "background-color: #2980B9; color: white;",  # Online Gaming
    "background-color: #27AE60; color: white;",  # Digital Distribution
    "background-color: #34495E; color: white;",  # Modern Era
    "background-color: #1ABC9C; color: white;",  # Mobile Gaming
    "background-color: #9B59B6; color: white;",  # Gaming Culture
    "background-color: #1ABC9C; color: white;"   # Mobile Dominance
)

groups <- data.frame(
  id = unique_groups,
  content = unique_groups,
  style = unique_styles[1:length(unique_groups)]
)

timevis(data = data, groups = groups, options = list(
  stack = TRUE,
  horizontalScroll = TRUE,
  zoomKey = "ctrlKey",
  height = "800px",
  orientation = "both"
)) %>%
  setOptions(list(
    editable = FALSE,
    showCurrentTime = FALSE
  ))
import { useNavigate, useLocation } from "react-router-dom";
import "./NavBar.css";

const NavBar = () => {
  const navigate = useNavigate();
  const location = useLocation();

  const handleClick = (path) => {
    navigate(path);
  };

  return (
    <div className="NavBarBox">
      <div
        id="NavBarLinks"
        onClick={() => handleClick("/")}
        className={location.pathname === "/" ? "active" : ""}
      >
        Top
      </div>
      <div
        id="NavBarLinks"
        onClick={() => handleClick("/news")}
        className={location.pathname === "/news" ? "active" : ""}
      >
        News
      </div>
      <div
        id="NavBarLinks"
        onClick={() => handleClick("/about")}
        className={location.pathname === "/about" ? "active" : ""}
      >
        About
      </div>
      <div
        id="NavBarLinks"
        onClick={() => handleClick("/talent")}
        className={location.pathname === "/talent" ? "active" : ""}
      >
        Talent
      </div>
      <div
        id="NavBarLinks"
        onClick={() => handleClick("/video")}
        className={location.pathname === "/video" ? "active" : ""}
      >
        Video
      </div>
    </div>
  );
};

export default NavBar;

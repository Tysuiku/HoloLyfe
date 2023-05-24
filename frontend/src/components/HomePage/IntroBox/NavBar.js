import { NavLink } from "react-router-dom";

const NavBar = () => {
  return (
    <div className="NavBarBox">
      <NavLink to="/">Top</NavLink>
      <NavLink to="/news">News</NavLink>
      <NavLink to="/about">About</NavLink>
      <NavLink to="talent">Talent</NavLink>
      <NavLink to="Video">Video</NavLink>
    </div>
  );
};

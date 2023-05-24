import "./IntroBox.css";
import SuiseiDance from "./BackgroundVideoHolo.mp4";
import HoloHead from "./hololiveHead.png";
import NavBar from "./NavBar";

const Introbox = () => {
  return (
    <>
      <div className="video-background">
        <video autoPlay loop muted>
          <source src={SuiseiDance} type="video/mp4" />
        </video>

        <div className="NavBarLogoSplit">
          <div>
            <img id="HoloHead" src={HoloHead} />
          </div>
          <div>
            <NavBar />
          </div>
        </div>
      </div>
    </>
  );
};

export default Introbox;

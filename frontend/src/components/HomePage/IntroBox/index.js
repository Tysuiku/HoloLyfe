import "./IntroBox.css";
import SuiseiDance from "./BackgroundVideoHolo.mp4";
import HoloHead from "./hololiveHead.png";

const Introbox = () => {
  return (
    <>
      <div className="video-background">
        <video autoPlay loop muted>
          <source src={SuiseiDance} type="video/mp4" />
        </video>
        <img id="HoloHead" src={HoloHead} />
      </div>
    </>
  );
};

export default Introbox;

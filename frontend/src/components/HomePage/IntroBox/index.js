import "./IntroBox.css";
import SuiseiDance from "./BackgroundVideoHolo.mp4";

const Introbox = () => {
  return (
    <div className="video-background">
      <video autoPlay loop muted>
        <source src={SuiseiDance} type="video/mp4" />
      </video>
    </div>
  );
};

export default Introbox;

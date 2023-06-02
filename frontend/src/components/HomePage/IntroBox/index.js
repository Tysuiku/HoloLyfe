import "./IntroBox.css";
import HoloHead from "./hololiveHead.png";
import NavBar from "./NavBar";

const Introbox = () => {
  return (
    <>
      <div className="video-background">
        <video autoPlay loop muted>
          <source
            src="https://hololyfe-seeds.s3.amazonaws.com/Suisei_Hoshimachi_PV.mp4"
            type="video/mp4"
          />
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

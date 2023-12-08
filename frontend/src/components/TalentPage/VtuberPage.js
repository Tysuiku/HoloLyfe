import React, { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useParams, useNavigate } from "react-router-dom";
import { fetchSingleVtuber } from "../../store/vtuber";
import NavBar from "../HomePage/IntroBox/NavBar";
import "./VtuberPage.css"

const VtuberPage = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { vtuberName } = useParams();
  const singleVtuber = useSelector((state) => state.vtuber.vtuber);

  const nameToIdMap = {
    "hoshimachi-suisei": "1",
    "minato-aqua": "2",
    "tokoyami-towa": "3",
    "sakamata-chloe": "4",
    "sakura-miko": "5",
    "usada-pekora": "6",
    "tokino-sora": "7",
    robocosan: "8",
    "yozora-mel": "9",
    "aki-rosenthal": "10",
    "akai-haato": "11",
    "shirakami-fubuki": "12",
    "natsuiro-matsuri": "13",
    "murasaki-shion": "14",
    "nakiri-ayame": "15",
    "yuzuki-choco": "16",
    "oozora-subaru": "17",
    azki: "18",
    "ookami-mio": "19",
    "nekomata-okayu": "20",
    "inugami-korone": "21",
    "shiranui-flare": "22",
    "shirogane-noel": "23",
    "houshou-marine": "24",
    "amane-kanata": "25",
    "tsunomaki-watame": "26",
    "himemori-luna": "27",
    "yukihana-lamy": "28",
    "momosuzu-nene": "29",
    "shishiro-botan": "30",
    "omaru-polka": "31",
    "la+-darknesss": "32",
    "takane-lui": "33",
    "hakui-koyori": "34",
    "kazama-iroha": "35",
    "ayunda-risu": "36",
    "moona-hoshinova": "37",
    "airani-iofifteen": "38",
    "kureiji-ollie": "39",
    "anya-melfissa": "40",
    "pavolia-reine": "41",
    "vestia-zeta": "42",
    "kaela-kovalskia": "43",
    "kobo-kanaeru": "44",
    "mori-calliope": "45",
    "takanashi-kiara": "46",
    "ninomae-ina’nis": "47",
    "gawr-gura": "48",
    "watson-amelia": "49",
    irys: "50",
    "ceres-fauna": "51",
    "ouro-kronii": "52",
    "nanashi-mumei": "53",
    "hakos-baelz": "54",
    "[alum]kiryu-coco": "55",
    "[alum]-tsukumo-sana": "56",
    "friend-a-(a-chan)": "57",
    "harusaki-nodoka": "58",
  };

  const socialMediaLinks = {
    "1": { youtube: "https://www.youtube.com/channel/UC5CwaMl1eIgY8h02uZw7u8A", twitter: "https://twitter.com/suisei_hosimati" },
    "5": { youtube: "https://www.youtube.com/channel/UC-hM6YJuNYVAmUWxeIr9FeA", twitter: "https://twitter.com/sakuramiko35"},
  };

  const vtuberId = nameToIdMap[vtuberName];

  useEffect(() => {
    if (vtuberId) {
      dispatch(fetchSingleVtuber(vtuberId));
    } else {
      navigate("/home");
    }
  }, [dispatch, vtuberId, navigate]);

  const renderMedia = (vtuber) => {
    const isVideo = vtuber.main_vid_url && vtuber.main_vid_url.endsWith('.mp4');

    if (isVideo) {
      return (
        <video autoPlay loop muted id="VtuberVideo">
          <source src={vtuber.main_vid_url} type="video/mp4" />
        </video>
      );
    } else {
      return (
        <img
          id="VtuberNotVideo"
          src={vtuber.main_vid_url}
          alt={vtuber.name}
        />
      );
    }
  };

  return (
    <div className="VtuberPageBox">
      <NavBar />

      
      {singleVtuber && singleVtuber[vtuberId] && (
        <div className="VtuberBox">

        <img id="TempVtuberImage"
            src={singleVtuber[vtuberId].main_image_url}
            alt={singleVtuber[vtuberId].name}
        />
       
          <div className="VtuberTextBox">

            <p id="VtuberName">{singleVtuber[vtuberId].name}</p>
            <p id="JpName">{singleVtuber[vtuberId].jpname}</p>
            <p id="Vtuberquote">{singleVtuber[vtuberId].quote}</p>
            <p id="VtuberDesu">{singleVtuber[vtuberId].description}</p>
            {renderMedia(singleVtuber[vtuberId])}
            <div className="VtuberSocialLinks">
                <a 
                  href={socialMediaLinks[vtuberId].youtube} 
                  target="_blank" 
                  rel="noopener noreferrer" 
                  className="socialButton"
                >
                  <span className="buttonText">YouTube</span><span className="arrowSymbol">{' >'}</span>
                </a>
                <a 
                  href={socialMediaLinks[vtuberId].twitter} 
                  target="_blank" 
                  rel="noopener noreferrer" 
                  className="socialButton"
                >
                  <span className="buttonText">X</span><span className="arrowSymbol">{' >'}</span>
                </a>
            </div>

          </div>
        </div>
      )}

    </div>
  );
};

export default VtuberPage;

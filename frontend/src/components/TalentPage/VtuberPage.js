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

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

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
    "shiori-novella": "55",
    "koseki-bijou":"56",
    "nerissa-ravencroft":"57",
    "fuwawa-abyssgard":"58",
    "mococo-abyssgard":"59",
    "hiodoshi-ao":"60",
    "otonose-kanade":"61",
    "ichijou-ririka":"62",
    "juufuutei-raden":"63",
    "todoroki-hajime":"64",
    "[alum]kiryu-coco": "65",
    "[alum]-tsukumo-sana": "66",
    "friend-a-(a-chan)": "67",
    "harusaki-nodoka": "68",
  };

  const socialMediaLinks = {
    "1": { youtube: "https://www.youtube.com/channel/UC5CwaMl1eIgY8h02uZw7u8A", twitter: "https://twitter.com/suisei_hosimati" },
    "2": { youtube: "https://www.youtube.com/channel/UC1opHUrw8rvnsadT-iGp7Cg", twitter: "https://twitter.com/minatoaqua" },
    "3": { youtube: "https://www.youtube.com/channel/UC1uv2Oq6kNxgATlCiez59hw", twitter: "https://twitter.com/tokoyamitowa" },
    "4": { youtube: "https://www.youtube.com/channel/UCIBY1ollUsauvVi4hW4cumw", twitter: "https://twitter.com/sakamatachloe" },
    "5": { youtube: "https://www.youtube.com/channel/UC-hM6YJuNYVAmUWxeIr9FeA", twitter: "https://twitter.com/sakuramiko35" },
    "6": { youtube: "https://www.youtube.com/channel/UC1DCedRgGHBdm81E1llLhOQ", twitter: "https://twitter.com/usadapekora" },
    "7": { youtube: "https://www.youtube.com/channel/UCp6993wxpyDPHUpavwDFqgg", twitter: "https://twitter.com/tokino_sora" },
    "8": { youtube: "https://www.youtube.com/channel/UCDqI2jOz0weumE8s7paEk6g", twitter: "https://twitter.com/robocosan" },
    "9": { youtube: "https://www.youtube.com/channel/UCD8HOxPs4Xvsm8H0ZxXGiBw", twitter: "https://twitter.com/yozoramel" },
    "10": { youtube: "https://www.youtube.com/channel/UCFTLzh12_nrtzqBPsTCqenA", twitter: "https://twitter.com/akirosenthal" },
    "11": { youtube: "https://www.youtube.com/channel/UC1CfXB_kRs3C-zaeTG3oGyg", twitter: "https://twitter.com/akaihaato" },
    "12": { youtube: "https://www.youtube.com/channel/UCdn5BQ06XqgXoAxIhbqw5Rg", twitter: "https://twitter.com/shirakamifubuki" },
    "13": { youtube: "https://www.youtube.com/channel/UCQ0UDLQCjY0rmuxCDE38FGg", twitter: "https://twitter.com/natsuiromatsuri" },
    "14": { youtube: "https://www.youtube.com/channel/UCXTpFs_3PqI41qX2d9tL2Rw", twitter: "https://twitter.com/murasakishionch" },
    "15": { youtube: "https://www.youtube.com/channel/UC7fk0CB07ly8oSl0aqKkqFg", twitter: "https://twitter.com/nakiriayame" },
    "16": { youtube: "https://www.youtube.com/channel/UC1suqwovbL1kzsoaZgFZLKg", twitter: "https://twitter.com/yuzukichococh" },
    "17": { youtube: "https://www.youtube.com/channel/UCvzGlP9oQwU--Y0r9id_jnA", twitter: "https://twitter.com/oozorasubaru" },
    "18": { youtube: "https://www.youtube.com/channel/UC0TXe_LYZ4scaW2XMyi5_kw", twitter: "https://twitter.com/AZKi_VDiVA" },
    "19": { youtube: "https://www.youtube.com/channel/UCp-5t9SrOQwXMU7iIjQfARg", twitter: "https://twitter.com/ookamimio" },
    "20": { youtube: "https://www.youtube.com/channel/UCvaTdHTWBGv3MKj3KVqJVCw", twitter: "https://twitter.com/nekomataokayu" },
    "21": { youtube: "https://www.youtube.com/channel/UChAnqc_AY5_I3Px5dig3X1Q", twitter: "https://twitter.com/inugamikorone" },
    "22": { youtube: "https://www.youtube.com/channel/UCvInZx9h3jC2JzsIzoOebWg", twitter: "https://twitter.com/shiranuiflare" },
    "23": { youtube: "https://www.youtube.com/channel/UCdyqAaZDKHXg4Ahi7VENThQ", twitter: "https://twitter.com/shiroganenoel" },
    "24": { youtube: "https://www.youtube.com/channel/UCCzUftO8KOVkV4wQG1vkUvg", twitter: "https://twitter.com/houshoumarine" },
    "25": { youtube: "https://www.youtube.com/channel/UCZlDXzGoo7d44bwdNObFacg", twitter: "https://twitter.com/amanekanatach" },
    "26": { youtube: "https://www.youtube.com/channel/UCqm3BQLlJfvkTsX_hvm0UmA", twitter: "https://twitter.com/tsunomakiwatame" },
    "27": { youtube: "https://www.youtube.com/channel/UCa9Y57gfeY0Zro_noHRVrnw", twitter: "https://twitter.com/himemoriluna" },
    "28": { youtube: "https://www.youtube.com/channel/UCFKOVgVbGmX65RxO3EtH3iw", twitter: "https://twitter.com/yukihanalamy" },
    "29": { youtube: "https://www.youtube.com/channel/UCAWSyEs_Io8MtpY3m-zqILA", twitter: "https://twitter.com/momosuzunene" },
    "30": { youtube: "https://www.youtube.com/channel/UCUKD-uaobj9jiqB-VXt71mA", twitter: "https://twitter.com/shishirobotan" },
    "31": { youtube: "https://www.youtube.com/channel/UCK9V2B22uJYu3N7eR_BT9QA", twitter: "https://twitter.com/omarupolka" },
    "32": { youtube: "https://www.youtube.com/channel/UCENwRMx5Yh42zWpzURebzTw", twitter: "https://twitter.com/LaplusDarknesss" },
    "33": { youtube: "https://www.youtube.com/channel/UCs9_O1tRPMQTHQ-N_L6FU2g", twitter: "https://twitter.com/takanelui" },
    "34": { youtube: "https://www.youtube.com/channel/UC6eWCld0KwmyHFbAqK3V-Rw", twitter: "https://twitter.com/hakuikoyori" },
    "35": { youtube: "https://www.youtube.com/channel/UC_vMYWcDjmfdpH6r4TTn1MQ", twitter: "https://twitter.com/kazamairohach" },
    "36": { youtube: "https://www.youtube.com/channel/UCOyYb1c43VlX9rc_lT6NKQw", twitter: "https://twitter.com/ayunda_risu" },
    "37": { youtube: "https://www.youtube.com/channel/UCP0BspO_AMEe3aQqqpo89Dg", twitter: "https://twitter.com/moonahoshinova" },
    "38": { youtube: "https://www.youtube.com/channel/UCAoy6rzhSf4ydcYjJw3WoVg", twitter: "https://twitter.com/airaniiofifteen" },
    "39": { youtube: "https://www.youtube.com/channel/UCYz_5n-uDuChHtLo7My1HnQ", twitter: "https://twitter.com/kureijiollie" },
    "40": { youtube: "https://www.youtube.com/channel/UC727SQYUvx5pDDGQpTICNWg/featured", twitter: "https://twitter.com/anyamelfissa" },
    "41": { youtube: "https://www.youtube.com/channel/UChgTyjG-pdNvxxhdsXfHQ5Q?", twitter: "https://twitter.com/pavoliareine" },
    "42": { youtube: "https://www.youtube.com/channel/UCTvHWSfBZgtxE4sILOaurIQ", twitter: "https://twitter.com/vestiazeta" },
    "43": { youtube: "https://www.youtube.com/channel/UCZLZ8Jjx_RN2CXloOmgTHVg", twitter: "https://twitter.com/kaelakovalskia" },
    "44": { youtube: "https://www.youtube.com/channel/UCjLEmnpCNeisMxy134KPwWw", twitter: "https://twitter.com/kobokanaeru" },
    "45": { youtube: "https://www.youtube.com/channel/UCL_qhgtOy0dy1Agp8vkySQg", twitter: "https://twitter.com/moricalliope" },
    "46": { youtube: "https://www.youtube.com/channel/UCHsx4Hqa-1ORjQTh9TYDhww", twitter: "https://twitter.com/takanashikiara" },
    "47": { youtube: "https://www.youtube.com/channel/UCMwGHR0BTZuLsmjY_NT5Pwg", twitter: "https://twitter.com/ninomaeinanis" },
    "48": { youtube: "https://www.youtube.com/channel/UCoSrY_IQQVpmIRZ9Xf-y93g", twitter: "https://twitter.com/gawrgura" },
    "49": { youtube: "https://www.youtube.com/channel/UCyl1z3jo3XHR1riLFKG5UAg", twitter: "https://twitter.com/watsonameliaEN" },
    "50": { youtube: "https://www.youtube.com/channel/UC8rcEBzJSleTkf_-agPM20g", twitter: "https://twitter.com/irys_en" },
    "51": { youtube: "https://www.youtube.com/channel/UCO_aKKYxn4tvrqPjcTzZ6EQ", twitter: "https://twitter.com/ceresfauna" },
    "52": { youtube: "https://www.youtube.com/channel/UCmbs8T6MWqUHP1tIQvSgKrg", twitter: "https://twitter.com/ourokronii" },
    "53": { youtube: "https://www.youtube.com/channel/UC3n5uGu18FoCy23ggWWp8tA", twitter: "https://twitter.com/nanashimumei_en" },
    "54": { youtube: "https://www.youtube.com/channel/UCgmPnx-EEeOrZSg5Tiw7ZRQ", twitter: "https://twitter.com/hakosbaelz" },
    "55": { youtube: "https://www.youtube.com/channel/UCgnfPPb9JI3e9A4cXHnWbyg", twitter:"https://twitter.com/shiorinovella" },
    "56": { youtube: "https://www.youtube.com/channel/UC9p_lqQ0FEDz327Vgf5JwqA", twitter:"https://twitter.com/kosekibijou" },
    "57": { youtube: "https://www.youtube.com/channel/UC_sFNM0z0MWm9A6WlKPuMMg", twitter:"https://twitter.com/nerissa_en" },
    "58": { youtube: "https://www.youtube.com/channel/UCt9H_RpQzhxzlyBxFqrdHqA", twitter:"https://twitter.com/fuwamoco_en" },
    "59": { youtube: "https://www.youtube.com/channel/UCt9H_RpQzhxzlyBxFqrdHqA", twitter:"https://twitter.com/fuwamoco_en" },
    "60": { youtube: "https://www.youtube.com/channel/UCMGfV7TVTmHhEErVJg1oHBQ", twitter:"https://twitter.com/hiodoshiao" },
    "61": { youtube: "https://www.youtube.com/@OtonoseKanade", twitter:"https://twitter.com/otonosekanade" },
    "62": { youtube: "https://www.youtube.com/@IchijouRirika", twitter:"https://twitter.com/ichijouririka" },
    "63": { youtube: "https://www.youtube.com/@JuufuuteiRaden", twitter:"https://twitter.com/juufuuteiraden" },
    "64": { youtube: "https://www.youtube.com/@TodorokiHajime", twitter:"https://twitter.com/todoroki_hajime" },
    "65": { youtube: "https://www.youtube.com/channel/UCS9uQI-jC3DE0L4IpXyvr6w", twitter: "https://twitter.com/kiryucoco" },
    "66": { youtube: "https://www.youtube.com/channel/UCsUj0dszADCGbF3gNrQEuSQ", twitter: "https://twitter.com/tsukumosana" },
    "67": { youtube: "https://www.youtube.com/channel/UCJFZiqLMntJufDCHc6bQixg", twitter: "https://twitter.com/achan_UGA" },
    "68": { youtube: "https://www.youtube.com/channel/UCJFZiqLMntJufDCHc6bQixg", twitter: "https://twitter.com/harusakinodoka" },
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
    const isImage = vtuber.main_vid_url && /\.(jpg|jpeg|png|gif)$/i.test(vtuber.main_vid_url);
  
    if (isVideo) {
      return (
        <video autoPlay loop muted id="VtuberVideo">
          <source src={vtuber.main_vid_url} type="video/mp4" />
        </video>
      );
    } else if (isImage) {
      return (
        <img
          id="VtuberNotVideo"
          src={vtuber.main_vid_url}
          alt={vtuber.name}
        />
      );
    } else {
      return null;
    }
  };

  let backgroundImageStyle = {};
  if (singleVtuber && singleVtuber[vtuberId]) {
    backgroundImageStyle = {
      backgroundImage: `url(${singleVtuber[vtuberId].main_image_url})`,
    };
  }

  const triangles = [
    { id: 1, rotation: 10, top: '10vw', left: '10vw' },
    { id: 2, rotation: 75, top: '10vw', left: '47vw' },
    { id: 3, rotation: 140, top: '35vw', left: '90vw' },
    { id: 4, rotation: 170, top: '42vw', left: '30vw' },
    { id: 5, rotation: 260, top: '45vw', left: '60vw' },
  ];
  
  
  return (
    <div className="VtuberPageBox">
      <div className="VtuberBackground" style={backgroundImageStyle}></div>

      <div className="TrianglePattern">
        <img src="/trianglePattern.svg" alt="Triangle Pattern" />
      </div>

      <div className="triangle-container">
      {triangles.map(triangle => (
        <img
          key={triangle.id}
          src="/triangles.svg"
          alt={`Triangle ${triangle.id}`}
          className="triangle"
          style={{
            transform: `rotate(${triangle.rotation}deg)`,
            top: triangle.top,
            left: triangle.left
          }}
        />
      ))}
    </div>

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

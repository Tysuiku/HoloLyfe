import React, { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useParams, useNavigate } from "react-router-dom";
import { fetchSingleVtuber } from "../../store/vtuber";
import NavBar from "../HomePage/IntroBox/NavBar";

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
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    azki: "18",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
  };

  const vtuberId = nameToIdMap[vtuberName];

  useEffect(() => {
    if (vtuberId) {
      dispatch(fetchSingleVtuber(vtuberId));
    } else {
      navigate("/home");
    }
  }, [dispatch, vtuberId, navigate]);

  return (
    <>
      <NavBar />

      {singleVtuber && (
        <>
          <h1>{vtuberName}'s Page</h1>
          <img src={singleVtuber.main_image_url} alt={singleVtuber.name} />
        </>
      )}
    </>
  );
};

export default VtuberPage;

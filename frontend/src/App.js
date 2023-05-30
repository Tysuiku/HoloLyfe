import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import HomePage from "./components/HomePage";
import NewsPage from "./components/NewsPage";
import AboutPage from "./components/AboutPage";
import TalentPage from "./components/TalentPage";
import VideoPage from "./components/VideoPage";
import VtuberPage from "./components/TalentPage/VtuberPage";
import "./reset.css";

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/news" element={<NewsPage />} />
        <Route path="/about" element={<AboutPage />} />
        <Route path="/talent" element={<TalentPage />} />
        <Route path="/talents/:vtuberName" element={<VtuberPage />} />
        <Route path="/video" element={<VideoPage />} />
        <Route path="*" element={<HomePage />} />
      </Routes>
    </Router>
  );
}

export default App;

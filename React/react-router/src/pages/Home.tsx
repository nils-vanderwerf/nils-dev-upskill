import { Helmet } from "react-helmet-async"
const Home = () => {
  return (
    <>
    <Helmet>
      <title>Home</title>
      <meta name='description' content="Home page description..."/>
    </Helmet>
    <div className="container mx-auto px-4 py-4 font-bold flex container py-8 ">
      <h1 className="text-3xl">
        Home Page
      </h1>
    </div>
    </>
  )
}

export default Home
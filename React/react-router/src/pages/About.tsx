import { Helmet } from "react-helmet-async"

const About = () => {
  return (
  <>
      <Helmet>
      <title>About</title>
      <meta name='description' content="About page description..."/>
    </Helmet>
  
    <div className="container mx-auto px-4 flex container py-8 px-8 font-bold">
      <h1 className="text-3xl">
        About
      </h1>
    </div>
  </>
  )
}

export default About
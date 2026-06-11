import { useParams } from "react-router-dom"
import { Helmet } from 'react-helmet-async'

const Blog = () => {
  const { category, id } = useParams()

  return (
    <>
    <Helmet>
      <title>My Blog Page</title>
      <meta name='description' content="My page description....."/>
    </Helmet>
    <div className="flex flex-col container mx-auto py-8 px-4">
      <h1 className="text-3xl font-bold">Blog Page</h1>
      <p className="">Category: {category} - ID: {id}</p>
    </div>
  </>
  )
}

export default Blog
import { useParams } from "react-router-dom"
import useDocumentHead from "../hooks/useDocumentHead"

const Blog = () => {
  const { category, id } = useParams()

  useDocumentHead({
    title: 'My Page Title',
    description: 'My Random Description'
  })
  return (
    <div className="flex flex-col container mx-auto py-8 px-4">
      <h1 className="text-3xl font-bold">Blog Page</h1>
      <p className="">Category: {category} - ID: {id}</p>
    </div>
  )
}

export default Blog
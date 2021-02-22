import React from 'react'

const Page = (props) => {
  console.log(props)
  return(
    <div>
      <h1>PAGES</h1>
      <a href={`/pages`}>Go Back</a>
      <h1>{props.page.title}</h1>
      <h1>{props.page.id}</h1>
    </div>
  )
}


export default Page
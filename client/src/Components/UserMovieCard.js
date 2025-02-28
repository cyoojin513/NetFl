import { React, useState, useRef } from 'react'
import { useHistory } from 'react-router-dom'
import { FaStar } from 'react-icons/fa'


function UserMovieCard({movieId, title, image, user, setUser, reviews, renderingNewReviews, renderingWithoutDeleted, updatedMovieCard}) {

  const [rating, setRating] = useState(0)
  const [hover, setHover] = useState(null);
  const [exsitingReviewId, setExsitingReviewId] = useState("")
  

  const [editedComment, setEditedComment] = useState("")
  const [isClicked, setIsClicked] = useState(false)

  const refOne = useRef(null)

  const handleExsitingReview = (e, id) => {
    e.preventDefault()
    if(refOne.current.contains(e.target)) {
      setIsClicked(!isClicked)
      setExsitingReviewId(id)
    }
  }
  
  const handleChange = (e) => {
    setEditedComment(e.target.value)
  }

  const handleSubmit = (e) => {
    e.preventDefault()
    fetch(`/reviews/${exsitingReviewId}`, {
      method: 'PATCH',
      headers: {"Content-Type": "application/json" },
      body: JSON.stringify({
        rating: rating-1,
        comment: editedComment,
        user_id: user.id,
        movie_id: movieId
      })
    }).then((resp) => resp.json())
      .then(updatedObj => renderingNewReviews(updatedObj))
  }

  const handleDelete = (review) => {
    const id = review.id
    fetch(`/reviews/${id}`, {
      method: 'DELETE'
    }).then(() => { 
      const newUser = { ...user }
      newUser.movies = user.movies?.filter((movie) => {
        if (movie.id !== review.movie_id) return true
      })
      setUser(newUser)
      renderingWithoutDeleted(review)
    })
  }

  const filteredReviews = reviews?.filter((review) => {
    if (review.movie_id === movieId && review.user_id === user.id) return true
  })


  const history = useHistory()
  const handleClick = () => {
    history.push(`/movie/${movieId}`)
  }

  const starObject = {1:'⭐', 2:'⭐⭐', 3:'⭐⭐⭐', 4:'⭐⭐⭐⭐', 5:'⭐⭐⭐⭐⭐' }
  
  return (
    <div>
    <div className='w-60 p-2 bg-black rounded-xl sm:w-60'>
        <img className='h-30 object-cover rounded-xl'  src={image} alt="movie" onClick={handleClick}/>
        <h2 className='font-bold text-lg text-center'>{title}</h2>
        {filteredReviews == false ? null : filteredReviews?.map((review) =>
          <div className='text-sm text-gray-300 m-2'>
            <h3 ref={refOne} onClick={e => handleExsitingReview(e, review.id)}>{review.comment} {starObject[review.rating]}</h3>
            <div className='h-9 flex items-center overflow-hidden h-screen justify-center mr-5 text-gray-600'>
              <p>Click to edit!</p>
            <button className='text-red-700 hover:text-white border border-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-2 py-0.5 text-center ml-10 mr-1 mt-2 mb-1 dark:border-red-500 dark:text-red-500 dark:hover:text-white dark:hover:bg-red-600 dark:focus:ring-red-900' onClick={e => handleDelete(review)}>Delete</button>
            </div>
          </div>
        )}
        {isClicked
          ? <form onSubmit={handleSubmit}>
              <input className="rounded-lg ml-1 mt-1 w-30 p-1 bg-gray-700 focus:border-blue-500 focus:bg-gray-800 focus:outline-none" type='text' name='comment' placeholder='Edit comment' value={editedComment} onChange={handleChange}></input>
              {[...Array(5)].map((star, i) => {
                const ratingValue = i + 1;
                return (
                  <div>
                  <label>
                    <input
                      type= "radio"
                      name= "rating"
                      value= {rating}
                      onClick= {() => setRating(ratingValue + 1)}
                    />
                    <FaStar
                      icon="fa-solid fa-star"
                      color= {ratingValue < (hover || rating) ? "#ffc107" : "#e4e5e9"}
                      size = {20}
                      onMouseEnter= {() => setHover(ratingValue + 1)}
                      onMouseLeave= {() => setHover(null)}
                    />
                  </label>
                  </div>
                )
              })}
              <button className='text-white-700 hover:text-white border border-white-700 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-white-300 font-medium rounded-lg text-sm px-2 py-0.5 text-center ml-1 mr-1 mt-1 mb-1 dark:border-white-500 dark:text-white-500 dark:hover:text-white dark:hover:bg-white-600 dark:focus:ring-white-900' >Submit</button>
            </form>
          : null
        }
    </div>
    </div>
  )
}

export default UserMovieCard

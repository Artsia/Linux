

#!/bin/bash shows what shell is being used

# Install and start the Apache web server
sudo yum -y install httpd
sudo systemctl enable httpd
sudo systemctl start httpd

# Create a custom index.html file
sudo tee /var/www/html/index.html > /dev/null <<EOF
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IBM interactive list app</title>
   <style>
    body {
    padding: 0%;
    margin: 0%;
    box-sizing: border-box;
    background-color: #0e6da4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 750px;

}

.box {
    background-color: white;
    width: 40%;
    display: flex;
    height: 50%;
    flex-direction: column;
    justify-content: space-evenly;
}

.f-div {
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    margin: 0 5%;
}

.empty {
    width: 100%;
    height: 0.5em;
}

#tasklist h1 {
    color: #046095;
    font-size: 2em;
    font-weight: 700;


}

.submit {
    display: flex;
    justify-content: space-between;
    width: 100%;
}

#taskInputdiv {
    width: 70%;
    height: 2em;
}

#taskInput {
    width: 100%;
    max-height: 100px;
    height: 100%;
    border: 2px solid #0e6da4;
    border-radius: 2%;
}

#taskInput:visited{
    border: 2px solid #0e6da4;
}

#taskbtndiv {

    height: 2em;
    width: 25%;
}

#taskbtn {
    color: white;
    background-color: #046095;
    height: 100%;
    border-radius: 5%;
    width: 90%;
}

/*tasks to be added styles explore height:100vh*/

.container{
    margin-top: 5%;
    width: 90%;
}

.task{
    display: flex;
    justify-content: space-evenly;
    border: 1px solid lightblue;
    margin: 50px 5%;
}

.task-paragraph{
    font-family: 'Courier New', Courier, monospace;
    color: #046095;
}

.del-btn{
 background-color: white;
}

.task-image{
    width: 18px;
}

   </style>
</head>
  <body>
     <div class="box">
        <div class="f-div">
            <div class="empty"></div>
            <div id="tasklist">
                <h1>Task List</h1>
            </div>

            <div class="submit">
                <div id="taskInputdiv">
                    <input type="text" id="taskInput" placeholder="Add a task">
                </div>

                <div id="taskbtndiv">
                    <input type="button" value="Add" id="taskbtn">
                </div>
            </div>
        </div>

        <!--user task go here-->
        <div class="s-div" id="container">
            <div>

            </div>
        </div>

    <script>
        // Get the container element
const container = document.getElementById('container');

// Function to create a new task
function createTask() {

  const maxStringLength = 7;

  // Get the user input
  const taskInput = document.getElementById('taskInput');
  const taskText = taskInput.value;

  if (taskText.trim() !== '') {
    // Create the new task div
    const taskDiv = document.createElement('div');
    taskDiv.classList.add('task');

    const maindiv = document.createElement('div');
    maindiv.classList.add('maindiv');
    //maindiv.style.overflowY = 'scroll';

    // Create the checkbox
    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';

    // Create the paragraph
    const taskParagraph = document.createElement('p');
    taskParagraph.classList.add('task-paragraph')
    taskParagraph.textContent = taskText;

    if (taskParagraph.textContent.length > maxStringLength) {
      //wordwrap or add scrollbar
      taskParagraph.style.overflowX = 'scroll';
    }

    // Create the delete button with image
    const delimg = document.createElement('img');
    delimg.src = './del.png';
    delimg.classList.add('task-image')

    var deleteButton = document.createElement('button');
    deleteButton.classList.add('del-btn')
    deleteButton.innerHTML = '<i class="fas fa-trash"></i>'; // Assuming you have a font awesome trash icon
    deleteButton.appendChild(delimg);

    // Append the elements to the task div
    taskDiv.appendChild(checkbox);
    taskDiv.appendChild(taskParagraph);
    taskDiv.appendChild(deleteButton);

    //maindiv.appendChild(taskDiv)

    // Append the task div to the container
    container.appendChild(taskDiv);

    container.classList.add('container')
    container.style.overflowY = 'scroll';


    // Clear the input
    taskInput.value = '';
  }
}
// Add event listener to the add button
const addButton = document.getElementById('taskbtn');
addButton.addEventListener('click', createTask);
    </script>
  </body>
</html>
EOF


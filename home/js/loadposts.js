
let offset = 10;

// Product Card
const createCard = (jsonData, ROOT_URL) => {
    var html = '';
    var data;
    jsonData.forEach(post => {
        data = `
                <div class="card mx-auto">
                    <img class="card-img-top" src="${post['image_link']}" alt="content image">
                    <div class="card-body">
                        <h5 class="card-title">${post['title']}</h5>
                        <p class="card-text">${post['content']}</p>
                        <p class="card-text">
                            <small class="text-muted">
                                Posted on ${post['date']} by <b><a class="profile" href="profile.php?id=${post['userid']}">${post['username']}</a></b></small></p>
                        <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#read_card-${post['id']}">Read Post</a>
                    </div>

                    <!-- Read card modal -->
                    <div class="modal fade" id="read_card-${post['id']}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">${post['title']}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <img class="modal-body-image" src="${post['image_link']}" alt="content image">
                                    <div class="modal-body-content">${post['content']}</div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        `;

        html += data;
    });

    return html;
}

const grid = document.querySelector('#main-content');
const ajax_msg = document.querySelector('#ajax-msg');


const getPosts = () => {
    offset+=10;
    var filter_options = {
        offset : offset,
    }
    var data = JSON.stringify(filter_options);
    var xhr = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP'); 

    xhr.onreadystatechange = () => {
        if (xhr.readyState == 4 && xhr.status == 200) {
            // console.log(xhr.responseText)
            jsonData = JSON.parse(xhr.responseText);
            // console.log(jsonData)
            if(jsonData.length > 0){
                let html = createCard(jsonData);
                ajax_msg.innerHTML = '';
                grid.innerHTML += html;
            } else {
                ajax_msg.innerHTML = "No more posts" 
            }   
        }
    };

    xhr.open("POST", "loadposts.php", true);
    xhr.setRequestHeader("Content-type", "application/json");
    xhr.send(data);
}

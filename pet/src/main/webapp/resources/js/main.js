//슬라이드 전체 크기 (width값)
const slide = document.querySelector(".choi-slide-container");
let prev = document.querySelector(".fa-chevron-left");
let next = document.querySelector(".fa-chevron-right");
let slideWidth = slide.clientWidth;

//버튼 엘리먼트 선택
const prevBtn = document.querySelector(".fa-chevron-left");
const nextBtn = document.querySelector(".fa-chevron-right");

//슬라이드 전체 선택
let slideItems = document.querySelectorAll(".choi-slide-img-box img");
//슬라이드 위치가 슬라이드 개수를 넘기지 않게 함
const maxSlide = slideItems.length;

//현재 슬라이드 위치
let currSlide = 1;

//페이지네이션 생성
const pagination = document.querySelector(".choi-pagination");

for(let i = 0; i<maxSlide; i++){
    if(i == 0) pagination.innerHTML += `<li class="active" data-index="1"></li>`;
    else pagination.innerHTML += `<li></li>`;
}

const paginationItems = document.querySelectorAll(".choi-pagination > li");


//무한 슬라이드를 위해 start, end 복사
const startSlide = slideItems[0];
const endSlide = slideItems[slideItems.length-1];
const startElem = document.createElement("div");
const endElem = document.createElement("div");

endSlide.classList.forEach((c) => endElem.classList.add(c));
endElem.innerHTML = endSlide.innerHTML;

startElem.classList.forEach((c) => startElem.classList.add(c));
startElem.innerHTML = startSlide.innerHTML;

//복제한 엘리먼트 추가
slideItems[0].before(endElem);
slideItems[slideItems.length-1].after(startElem);

//슬라이드 전체를 선택해 값을 변경해주기 위해 슬라이드 전체 선택
slideItems = document.querySelectorAll(".choi-slide-img-box");

let offset = slideWidth+currSlide;
slideItems.forEach((i, index) => {
    const offset = slideWidth * index;
    i.style.left = `${offset}px`;
});

function nextMove(){
    currSlide++;
    //마지막 슬라이드 이상으로 넘어가기 금지
    if(currSlide <= maxSlide){
        //슬라이드 이동 시키기 위한 offset 계산
        const offset = slideWidth * (currSlide - 1); // 슬라이드 이동을 위한 offset 계산
        slideItems.forEach((i) => {
            i.style.left = `${-offset}px`; // 각 슬라이드 아이템의 스타일을 업데이트하여 슬라이드를 이동시킴
        });
        paginationItems.forEach((i) => i.classList.remove("active")); // 모든 페이지네이션 항목의 활성 클래스 제거
        paginationItems[currSlide - 1].classList.add("active"); // 현재 슬라이드에 해당하는 페이지네이션 항목에 활성 클래스 추가
    } else {
        currSlide = 1; // 슬라이드가 마지막 슬라이드를 넘어가면 첫 번째 슬라이드로 돌아감
        const offset = 0; // 슬라이드를 처음 위치로 이동
        slideItems.forEach((i) => {
            i.style.left = `${-offset}px`; // 각 슬라이드 아이템의 스타일을 업데이트하여 슬라이드를 이동시킴
        });
        paginationItems.forEach((i) => i.classList.remove("active")); // 모든 페이지네이션 항목의 활성 클래스 제거
        paginationItems[currSlide - 1].classList.add("active"); // 현재 슬라이드에 해당하는 페이지네이션 항목에 활성 클래스 추가
    }
}

function prevMove(){
    currSlide--;
    //첫번째 슬라이드 이하로 넘어가지 금지
    if(currSlide >= 1){
        const offset = slideWidth * (currSlide - 1); // 슬라이드 이동을 위한 offset 계산
        slideItems.forEach((i) => {
            i.style.left = `${-offset}px`; // 각 슬라이드 아이템의 스타일을 업데이트하여 슬라이드를 이동시킴
        });
        paginationItems.forEach((i) => i.classList.remove("active")); // 모든 페이지네이션 항목의 활성 클래스 제거
        paginationItems[currSlide - 1].classList.add("active"); // 현재 슬라이드에 해당하는 페이지네이션 항목에 활성 클래스 추가
    } else {
        currSlide = maxSlide; // 슬라이드가 첫 번째 슬라이드를 넘어가면 마지막 슬라이드로 돌아감
        const offset = slideWidth * (maxSlide - 1); // 슬라이드를 마지막 위치로 이동
        slideItems.forEach((i) => {
            i.style.left = `${-offset}px`; // 각 슬라이드 아이템의 스타일을 업데이트하여 슬라이드를 이동시킴
        });
        paginationItems.forEach((i) => i.classList.remove("active")); // 모든 페이지네이션 항목의 활성 클래스 제거
        paginationItems[currSlide - 1].classList.add("active"); // 현재 슬라이드에 해당하는 페이지네이션 항목에 활성 클래스 추가

    }
}

//버튼 엘리먼트에 클릭 이벤트 추가
nextBtn.addEventListener("click", ()=>{
    nextMove();
});
prevBtn.addEventListener("click", ()=>{
    prevMove();
});

// 브라우저 화면이 조정될 때 마다 slideWidth를 변경하기 위해
window.addEventListener("resize", () => {
    slideWidth = slide.clientWidth;
  });
  
  // 각 페이지네이션 클릭 시 해당 슬라이드로 이동하기
  for (let i = 0; i < maxSlide; i++) {
    // 각 페이지네이션마다 클릭 이벤트 추가하기
    paginationItems[i].addEventListener("click", () => {
      // 클릭한 페이지네이션에 따라 현재 슬라이드 변경해주기(currSlide는 시작 위치가 1이기 때문에 + 1)
      currSlide = i + 1;
      // 슬라이드를 이동시키기 위한 offset 계산
      const offset = slideWidth * currSlide;
      // 각 슬라이드 아이템의 left에 offset 적용
      slideItems.forEach((i) => {
        i.setAttribute("style", `left: ${-offset}px`);
      });
      // 슬라이드 이동 시 현재 활성화된 pagination 변경
      paginationItems.forEach((i) => i.classList.remove("active"));
      paginationItems[currSlide - 1].classList.add("active");
    });
  }

  // 기본적으로 슬라이드 루프 시작하기
let loopInterval = setInterval(() => {
    nextMove();
  }, 1500);
  
  // 슬라이드에 마우스가 올라간 경우 루프 멈추기
  prev.addEventListener("mouseover", () => {
    clearInterval(loopInterval);
  });
  
  // 슬라이드에서 마우스가 나온 경우 루프 재시작하기
  next.addEventListener("mouseout", () => {
    loopInterval = setInterval(() => {
      nextMove();
    }, 1500);
  });
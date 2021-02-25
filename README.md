git：
新建并且切换分支： git checkout -b structure-and-navigation
git add .
git push origin structure-and-navigation
回到主分支： git checkout master
和分支代码合并： git merge structure-and-navigation



不需要修改数据的小部件继承StatelessWidget


主轴的对其方式默认是起点,交叉轴的对其方式默认是居中
设置子部件的对其百分比: alignment: Alignment(1, 1)右下角,

Stack: 一摞小部件,最外层是底板,可以叠加到一起, 在里面可以有Positioned小部件,利用属性设置其具体的位置

AspectRatio: 设置宽高比
ConstrainedBox: 对容器有一些限制, 比如最大宽度,最大高度


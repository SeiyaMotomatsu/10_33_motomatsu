<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>フリーアンケート登録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="select.php">データ表示</a>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<!-- enctype属性を追記 -->
<form method="post" action="insert_fileup.php" enctype="multipart/form-data">
  <div class="jumbotron">
   <fieldset>
    <legend>フリーアンケート登録</legend>
     <label>名前：<input type="text" name="name"></label><br>
     <label>Email：<input type="text" name="email"></label><br>
     <label><textArea name="detail" rows="4" cols="40"></textArea></label><br>
     <!-- input type="file"を追記 -->
     <input type="file" name="upfile" accept="image/*" capture="camera">
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>

<!-- Main[End] -->
  <script src="https://cdn.ckeditor.com/4.10.1/full/ckeditor.js"></script>
  <script>
      CKEDITOR.replace('detail');
      // jsではalert(CKEDITOR.instances.detail.getData());で値がとれる
  </script>

</body>
</html>

<style>
    .box-content form{
        margin: 30px 0;
    }
    
    .box-content form label{
        font-size: 17px;
        font-weight: 300;
        color: black;
        display: block;
        border: 1px solid #ccc;
        padding: 5px;
    }
    
    .box-content .form-group{
        margin: 15px 0;
    }
    
    .box-content form input[type=text],
    .box-content form input[type=password]{
        font-size: 16px;
        font-weight: normal;
        color: black;
        width: 100%;
        height: 40px;
        border: 1px solid #ccc;
        padding-left: 8px;
    }

    textarea{
        font-size: 16px;
        font-weight: normal;
        color: black;
        width: 100%;
        height: 150px;
        border: 1px solid #ccc;
        padding-left: 8px; 
        margin-top: 8px;
        resize: vertical;
    }

    .box-content form select{
        font-size: 16px;
        font-weight: normal;
        color: black;
        width: 100%;
        height: 40px;
        border: 1px solid #ccc;
        padding-left: 8px;
    }
        
    .box-content form input[type=file]{
        width: 100%;
        padding: 8px;
        margin-top: 8px;
        border: 1px solid #ccc;
    }

    .box-content input[type=submit]{
        width: 100px;
        height: 40px;
        cursor: pointer;
        font-size: 14px;
        margin-top: 8px;
        background: #1de9b6; 
        border: 0;
        color: white;
    }

    .box-alert{
        width: 100%;
        padding: 8px 0;     
    }

    .sucesso{
        background: #a5d6a7;
        text-align: center;
        color: white;
    }

    .erro{
        text-align: center;
        background: #F75353;
        color: white;
    }
    </style>
    
    <div class="box-content">
        <h2><i class="fa fa-pencil"></i> Adicionar Depoimentos</h2>    
        <form method="post" enctype="multipart/form-data">
        <?php
            if(isset($_POST['acao'])){
                if(Painel::insert($_POST)){
                    Painel::alert('sucesso','O cadastro do depoimento foi realizado com sucesso!');
                }else{
                    Painel::alert('erro','Campos vazios n??o s??o permitidos!');
                }
            }   
        ?>         
            <div class="form-group">
                <label>Nome da pessoa:</label>   
                <input type="text" name="nome" />
            </div>
            <div class="form-group">
                <label>Depoimento:</label>   
                <textarea type="text" name="depoimento"></textarea>
            </div>
            <div class="form-group">
                <label>Data:</label>   
                <input formato="data" type="text" name="data" />
            </div>
            <div class="form-group"> 
                <input type="hidden" name="order_id" value="0" />
                <input type="hidden" name="nome_tabela" value="tb_site.depoimentos" />
                <input type="submit" value="Cadastrar!" name="acao" />
            </div>
        </form>
    </div>
    
    
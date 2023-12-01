function output = sparse2matrix(inputed_sparse)
    
    matrix = zeros(inputed_sparse(1),inputed_sparse(2));
    matrix (1:inputed_sparse(1),1:inputed_sparse(2)) = inputed_sparse(3);

    for i = (4:3:length(inputed_sparse))
        matrix(inputed_sparse(i),inputed_sparse(i+1)) = inputed_sparse(i+2);
    end
    
    output = matrix;
end
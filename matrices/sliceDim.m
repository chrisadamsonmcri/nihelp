function out = sliceDim(V, d, n, permuteNew)
%% SLICEDIM extract the n-th slice from the d-th dimension of volume V
%% Examples
%   sliceDim(magic(3),1,1)
%   V = magic(5)+permute([0 0 0],[1 3 2]); sliceDim(V,1,1)
%   V = magic(5)+permute([0 0 0],[1 3 2]); sliceDim(V,2,[1,2])
% 
% 
%% TODO
% * docs
% 
% 
%% Authors
% Mehul Gajwani, Monash University, 2024
% 
% 

if nargin < 4 || isempty(permuteNew); permuteNew = 1; end

colons = repmat({':'}, 1, ndims(V));
colons{d} = n;
out = V(colons{:});

if permuteNew; out = permute(out, [setdiff(1:ndims(V), d), d]); end

end

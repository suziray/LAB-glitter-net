stars = readtable('hyg3.csv');
vstars = stars(stars.mag <= 6.5, :);
cvstars = vstars(vstars.dist < 100000, :);
cvstars = sortrows(cvstars, 'mag');
c = linspace(1, .2, length(cvstars.id));
c = [c' c' c'];
scatter3(cvstars.x,cvstars.y,cvstars.z, 5, .2+c, 'filled');
xlabel('X (Vernal Equinox)');
ylabel('Y (R.A. 6 Hours)');
zlabel('Z (North Pole)');
title('Universe Chart');
set(gca,'Color',[0 0 0]);
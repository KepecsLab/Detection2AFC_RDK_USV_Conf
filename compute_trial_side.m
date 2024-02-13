        %% compute_trial_side
        function correct_side = compute_trial_side(trial_prior)
            % use priors to randomly select trial sides, here -1 is close
            % and 1 is far
            rng('shuffle');
            is_stimulus = (randi([0, 2]) >= 1);
            if is_stimulus
                correct_side = double(randi([0, 1]));
                if correct_side == 0
                    correct_side = -1;
                end
            else
                correct_side = 0;
            end

        end
        
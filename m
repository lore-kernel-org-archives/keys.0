Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EEA1869
	for <keys@linux.kernel.org>; Fri, 29 Apr 2022 20:35:30 +0000 (UTC)
Received: by mail-qv1-f46.google.com with SMTP id kc16so5256507qvb.7
        for <keys@linux.kernel.org>; Fri, 29 Apr 2022 13:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9f7BZRYYMk4nEmmhgoq9HXFoV20ZQZD/AzKo0qZihSE=;
        b=AYedmGk/x/TRhZmXD7eUXReqgXHWA4RORiArp6XxWvku0/GTNUKH55yuXKBhPFxBZk
         PdM6xETonGa9Yd/aUdFT17Jdbs69kSyKsQy6pIgYXjN6Y4+inHPgFLrm6qqEIX3Xnzvy
         nTQ/soG41+WjnCTXCATdAhjz43A8RLnUojcjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9f7BZRYYMk4nEmmhgoq9HXFoV20ZQZD/AzKo0qZihSE=;
        b=zAafVR+uRwIyVjOqAL1qpUAX42KNr24QgWO5ahupKk9sj3fEPkQTvkhC+sbbK3Okav
         Ju/jux9Q38mTEn/niZCXjl5I0VEtJncBsgBjq9OD4z61qZZ9Hn1dw+rg84c0Kzpm+mgc
         1/z3hK1cuYAXqCykB5yFsFW+1ds6ilHBQtshE3QiN8FI98tvnvKing6hqXXZ1KPpyieQ
         zw1/c31LFr76iVqn9gAKS5Wh64Lz3QGqrZNW+7Wx7PR33ip7DQeVzxjVcsJ4XdrfhJjq
         FhKmzBvirSt81UnMpIYCrxUCUyN1BUKcrNc7+VG7a61svNLmvbDHhHMtUvbwRYAoZnGj
         QhkQ==
X-Gm-Message-State: AOAM531kzy1aMYIgaArXaywjR7hA5bYzjRUhkLKbqeePeujOmWtlrGbY
	TNHSHZtzxIE/f+kQJMZWuJuv5Q==
X-Google-Smtp-Source: ABdhPJyGUQ9UrGGz+bJYtEuChspNf6p+2GCn806JGW12RmOumlCPoh3YszlDgmw9SNanBttJ4oT/FQ==
X-Received: by 2002:a05:6214:226c:b0:456:3a0b:64a9 with SMTP id gs12-20020a056214226c00b004563a0b64a9mr677773qvb.78.1651264529437;
        Fri, 29 Apr 2022 13:35:29 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id t28-20020a05620a035c00b0069fc13ce1f1sm105673qkm.34.2022.04.29.13.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 13:35:29 -0700 (PDT)
Date: Fri, 29 Apr 2022 16:35:27 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: keys@linux.kernel.org
Subject: Re: samitolvanen@google.com
Message-ID: <20220429203527.keefuzwnnnrey2lc@meerkat.local>
References: <CABCJKudybD7aLWco59Eh7gPefyVYuPf9B6Nu0zuD8vQhXMd=5w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CABCJKudybD7aLWco59Eh7gPefyVYuPf9B6Nu0zuD8vQhXMd=5w@mail.gmail.com>

On Fri, Apr 29, 2022 at 01:31:38PM -0700, Sami Tolvanen wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K

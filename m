Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A898F6E
	for <keys@linux.kernel.org>; Tue,  2 May 2023 19:41:54 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-74e462a540aso199063285a.1
        for <keys@linux.kernel.org>; Tue, 02 May 2023 12:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683056513; x=1685648513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ix0YPpJk7ER9lkRdz1ZBBkYViW2vhW1Bs139EnRnZfE=;
        b=aHk4+OpM/YYQVveTbPy6U1ce5ry4qMVBSJjHAdGVRiISz9UPLPrSqQpQdNCHAxurgE
         96Czl2OztzKN5qhDxX+FYxeKuNi7wAaPdbK15F9LyRT3NKGV7bWYNsUVWr6l3lQcUJ1I
         88pde3AzVbYvmCILTbM6a8eLXfyIm728sCkhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683056513; x=1685648513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ix0YPpJk7ER9lkRdz1ZBBkYViW2vhW1Bs139EnRnZfE=;
        b=gwMeixu0xWzAR3L8Wdq/nQuAW2CYPXw46TN4yYZTuLTTbRaBPzmZqIJf/I2hnqXZyh
         rgkX7Fobb/BO7+T0kH+kMJJd06Xg6eavnENkqAPPOJ/+e5pvmBxIKtq8boXJ7zG4lc/H
         FIFm7UHGKKWfv9vNsjiilYGiG7CvDiipJOwqIK1mPAEseDT4tsFO7xokGLugoOeA4gpp
         OM+kBDyLckbnWW9Roh7SgOtYmcSiDvNODlHEjga+OWH6cK03Qq5s69wiVeMSw+tQB4m5
         WbpWKQcOCUyzEVv+z+15rnW3FPLNIeDKbrW5Ll6d+HBtqHun0UzzC/RqNzjRNqA4KTnI
         LZsQ==
X-Gm-Message-State: AC+VfDzxR32gXPTklgNPJJ4dqyfjK4StXtbmrRVXKx4b7tEUEnULZfXI
	icQRIQLoU6Nnb2IfrYdal1mgeyQ++rdHA+JmGjg=
X-Google-Smtp-Source: ACHHUZ7/+HzBKRC7+bfay1rn9FmkYOzyY9ULHPdw/capm50ZrbPea7UIvkgDEdtgcA8OrXEe08j8TA==
X-Received: by 2002:a05:622a:653:b0:3d9:4586:3ab2 with SMTP id a19-20020a05622a065300b003d945863ab2mr26382384qtb.28.1683056513085;
        Tue, 02 May 2023 12:41:53 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id dp12-20020a05620a2b4c00b0074df4765056sm9926888qkb.104.2023.05.02.12.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 May 2023 12:41:52 -0700 (PDT)
Date: Tue, 2 May 2023 15:41:51 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: keys@linux.kernel.org
Subject: Re: neil.armstrong@linaro.org
Message-ID: <20230502-dancing-resume-6d1031@meerkat>
References: <20230502185727.95B491882313@hyperion.starnux.net>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230502185727.95B491882313@hyperion.starnux.net>

On Tue, May 02, 2023 at 08:57:27PM +0200, Neil Armstrong wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K

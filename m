Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9E210FF
	for <keys@linux.kernel.org>; Mon, 17 Apr 2023 16:35:25 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id m21so14823221qtg.0
        for <keys@linux.kernel.org>; Mon, 17 Apr 2023 09:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1681749324; x=1684341324;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jiOXBPY9BM/+Q29yrUmg1D1P/4g6t4Bruhwm6ggyrHk=;
        b=eoQh+walUy8pBWsDSHNDQnY7ypGeZnBrE1/5bK0ioXbI8vfIhLkxmxbqiB17Jz6ywu
         LZvmCxggs2zEM0gzizs79OkgESGnx1CzOdvNu4jfAuSdgHOKk4ZV+lMJQLez9Xda5rzj
         BWdMoqsilTIXO/2FjnSFyVLNimB9IJ+skfeo4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681749324; x=1684341324;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jiOXBPY9BM/+Q29yrUmg1D1P/4g6t4Bruhwm6ggyrHk=;
        b=Ce6zhNQ3m/EYM6po83o8PopNJZW1gtCpL2kg+BTmmcBD5J/CwOUf1v+tUqqO4dBV4r
         uKwQfp3NHRV/cPVWxnueUW+AAZCHuinYV2Xlbsjsv1GT5ZinEbneW2zJXcTlyqykgVG5
         s61MnrfvPZkzJshDNpsGL5wHkDAigdShcdbYx7fjceb6CbRZTvcbiIJUB4n0OcuCsF7Y
         dEXhqYABQsFMORAHjcYGV6yE8Old2nvk9VJZD9lS/tKkUB+h10usBCjLcEllegUyFZpW
         ZenFXtbdSugHQmSTBRTXPGbhuJIjgLLJOX71HphvMt5USWRRnx9ny/uE451z4O96goNY
         sqEA==
X-Gm-Message-State: AAQBX9eJ1J0g2REQFIW59Vj7jMMk1Glpyoub3KJQ4x7h6y9NOr22D7pT
	TBp7Z9dk/QZ6Hmf95vHEQsOs6w==
X-Google-Smtp-Source: AKy350YdSigtt+As7+3vHFsch5ZH9Nz+OiyFKLBvu6hbZDNrL7gcgbIpypFkjgd6hRpyodU9GwpjGg==
X-Received: by 2002:a05:622a:1315:b0:3e3:9117:66e8 with SMTP id v21-20020a05622a131500b003e3911766e8mr25780497qtk.35.1681749324412;
        Mon, 17 Apr 2023 09:35:24 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id i1-20020ac813c1000000b003ef13aa5b0bsm1187962qtj.82.2023.04.17.09.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 09:35:24 -0700 (PDT)
Date: Mon, 17 Apr 2023 12:35:22 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <20230417-rambling-defection-3d6c67@meerkat>
References: <3d9ddb5b-be77-aafc-d359-75e4b2b8491b@linaro.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3d9ddb5b-be77-aafc-d359-75e4b2b8491b@linaro.org>

On Fri, Apr 14, 2023 at 05:30:53PM +0200, Konrad Dybcio wrote:
> Hi, please import my attached key file.

Hello:

There are no signatures on the key, so we cannot accept it. For inclusion into
the pgpkeys repository, please get at least two signatures from people already
in that repository.

Best regards,
Konstantin

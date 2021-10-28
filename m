Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30562C87
	for <keys@linux.kernel.org>; Thu, 28 Oct 2021 13:10:46 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id a5so1001124qvn.4
        for <keys@linux.kernel.org>; Thu, 28 Oct 2021 06:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BpoO//nevB5bSNO1TERNQlMzQ40y95PSjs50Coi/458=;
        b=Cb4hx+ttCTOjbMNybAdd9awYwa3Y5G7lwBPgO+Ea95+huR5GX85UYJS38njwS2puEy
         w0dMhMoHj3R4GtvY1R8XERzXTwrLhqG+UQ5yyt03NSTl7SQpRQUzIKHOJyXhhTxGMjTo
         SmiIghpJv5rgQQXyFmmGYOEZBkP5QCnrNXDYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BpoO//nevB5bSNO1TERNQlMzQ40y95PSjs50Coi/458=;
        b=GN0ISwgMy64uu4EGYTpUIT6UvstoW0cep8LustGCbk0teIi3MxTIXYx6UkYYDZzoTr
         FijqS7eaCrRd61UVA+QtJ7L/hkLrbuFKK+IaTl9Aw+ttg+NSROrJqk5QH38KIxRmVBq5
         BNACo0UmeoO9Zap6bWrvfCgUI9eGCrtqsHqIiOFbHd5qGb2Kv1wu3Yle8Us0Wa5/AA2F
         zXSUJWKHSr39agmrMhACKlOJaKapVq+a7lur4qqlVzQ2KS7Yvktlu/6SDe5Bt7UbSUpt
         6NcbcpiqYiPd+zj5jKYFGh09SQ1QOj0rfeP1b3AlNyvx60cIOQ8Jq5IM+UeD75Panhsz
         36Sw==
X-Gm-Message-State: AOAM5319glR7QYseb6ZxX9XFcbPW901rRN9oIsHQqAyxAHAD/0xe83V6
	ZcWb99s80MTD3rMLmN/HNl+hdZitTChkIg==
X-Google-Smtp-Source: ABdhPJxbnQv/YhO8f3Pz+xomedI37i4PEjBZEzBt8u53UAR0Og+Od+1+BHUeN47hThYnAXoACJAjyQ==
X-Received: by 2002:a05:6214:f6b:: with SMTP id iy11mr3881964qvb.22.1635426645765;
        Thu, 28 Oct 2021 06:10:45 -0700 (PDT)
Received: from nitro.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id i2sm2002777qti.92.2021.10.28.06.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 06:10:45 -0700 (PDT)
Date: Thu, 28 Oct 2021 09:10:43 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Xu Yilun <yilun.xu@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: yilun.xu@intel.com
Message-ID: <20211028131043.3jlbwbnjhta3iaj4@nitro.local>
References: <20211028055418.GA205145@yilunxu-OptiPlex-7050>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211028055418.GA205145@yilunxu-OptiPlex-7050>

On Thu, Oct 28, 2021 at 01:54:18PM +0800, Xu Yilun wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added, thanks.

-K

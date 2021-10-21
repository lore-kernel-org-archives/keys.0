Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB042C81
	for <keys@linux.kernel.org>; Thu, 21 Oct 2021 13:56:01 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id w2so568885qtn.0
        for <keys@linux.kernel.org>; Thu, 21 Oct 2021 06:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dvYVNbGpJuRDnGzFoVwtr/oaOte4taqxNFN5o8lUywM=;
        b=ifGA9t8lz9sJ+ZU+5OsGxS8wvigYS9d+hkIubsEnEQouhadEqYnyQSjrWrDeLZByWo
         TEmgppUDhO3D1ff6F3TIa7zVoqfjxuVjdXpGW1207xWBMapiUojBM0MYHF1OTMVh8LD4
         hwHCxdJnhKLpvw5AI2SpB6E6El4GKxV7UJqts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dvYVNbGpJuRDnGzFoVwtr/oaOte4taqxNFN5o8lUywM=;
        b=JLbMn4FcuhuVE0ZL8xPa+qK9IZJpa59K29u+4+/SgtLlmQ9ukJhtd17k1HFHIhcG/H
         V8eMKc+YZO42N/5Ala5YrD+m1TQOArCBMdcgIkF4y1jmLwoR1BXqVdfp5IpBzmRaDiCW
         v7xERHN0zCGZPpaza2y5pArGcWyTLVXDa1CG57TbIHJ4+3NotGJJ3AW1NV+aJbbKCvIA
         OIEA9h7xP0n5OIkUkpyhuoQb6nbUgBsBmbyvVt27gQnC4LGh62P7IYke02DLU/RIsCeD
         Ez33QFZxx0BHdsVIEJho9tK1kxfHYww/MrcgCmiARB5dZjEB0I+UDJCl6f4H/zezXfro
         hSDw==
X-Gm-Message-State: AOAM532H81L81d8NklrpF5IM3CYCtr9w93b4ytQ2N6xnOwcmUfS8jMkF
	sXDeg/jGpkbQ5GXX7ac3eLy17iW5W4g=
X-Google-Smtp-Source: ABdhPJxtJGdGz9iP0/c42RGTf9zZ9hmQBNcw0URDZ0rpB7L/uCJz2uEz55QrCw8wkqNu1QNMJidqgg==
X-Received: by 2002:ac8:584b:: with SMTP id h11mr6313266qth.88.1634824560250;
        Thu, 21 Oct 2021 06:56:00 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id f3sm2694035qko.32.2021.10.21.06.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 06:55:59 -0700 (PDT)
Date: Thu, 21 Oct 2021 09:55:58 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Lukasz Majewski <lukma@denx.de>
Cc: keys@linux.kernel.org
Subject: Re: [gpg] Public key for Lukasz Majewski
Message-ID: <20211021135558.kir4d72ijpefrb7u@meerkat.local>
References: <20211021074108.6f028961@ktm>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211021074108.6f028961@ktm>

On Thu, Oct 21, 2021 at 07:44:15AM +0200, Lukasz Majewski wrote:
> Dear Community,
> 
> I would like to share the export.asc file for my gpg key.

There don't appear to be any signatures on your key, so we are unable to
include it into the keyring. If you would like to have it included, please get
at least 2 people currently already in the keyring to cross-sign your key.

Regards,
-K

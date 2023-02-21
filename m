Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC04BA92D
	for <keys@linux.kernel.org>; Tue, 21 Feb 2023 22:28:24 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id d5so5884878qtn.13
        for <keys@linux.kernel.org>; Tue, 21 Feb 2023 14:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yakD37SOonDlEVI09kLhoIOc0NL+vpsrpPjUVsOoTOY=;
        b=XLMMGOf++9Ir2jd/Qp2SOgcTp51dC3GnkjgpjbdqxX+O+g67sOmIr/Kn70j1u/FDT5
         UxkBl2I/fHVT8nxhu0tHXnHMqhCWU5fg+vwDI7DpDfQZBjoxkm4r6w04PpkaI3/pRA8b
         E6jLRqtBfgnPxzbFk8AFeXEzWyigGTZCVfqcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yakD37SOonDlEVI09kLhoIOc0NL+vpsrpPjUVsOoTOY=;
        b=CseOo0znfAH4k1yGpN4VICDWI8SW8VBl31ciRb/B2ENZxhzqc3zgEbl3r3+g2idBx0
         bC5/3AAGRpklGpGZJhx3NpwVwOCHQY8xiop0D2cM+CS+7w+MAaUli0CI9SaHbP3K2PDa
         SKnhQjQ5JLkY2liHYE62sxM3F23sZQAEZVaKXu6eYlqX7zo03WY1TOM5/wwQEDlL6BVv
         Iy4kpOWOBW32zjPHW21lH6Rn1sj4J/xFjlaVwRc+5EeIGJ1DStC2r8pzuvNaGNKkLs7b
         rSL7hdxM6jtY4VAqllVXKz3k5EYXg5HlLnc/tFGpE5Kosex4avQkDVUVPJCPZ6sUL5+L
         X5Wg==
X-Gm-Message-State: AO0yUKXLNZ1jNrLMTrznGqr654UYdWGNAqlEGiLnziJU5G/uBkJwD5JN
	VPZhaxTQI3/OM1y5C9XFe07R8+yphtklr04d
X-Google-Smtp-Source: AK7set9TyjPUYIGCeV6JPRuTWe13Cp0Jog0PpBI+RvwYuKBHluFScy68zkfycZMHtJROGJrCk04bRA==
X-Received: by 2002:a05:622a:8f:b0:3b9:a63e:35c0 with SMTP id o15-20020a05622a008f00b003b9a63e35c0mr11210139qtw.16.1677018503590;
        Tue, 21 Feb 2023 14:28:23 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id p20-20020ac84094000000b003b9a573aec6sm1030302qtl.70.2023.02.21.14.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 14:28:23 -0800 (PST)
Date: Tue, 21 Feb 2023 17:28:21 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <20230221222821.puatf6y3f4dnlz7h@meerkat.local>
References: <Y+TQqjEzhv0P1vwB@yekko>
 <20230209204114.ynajycsawbmjugxj@meerkat.local>
 <Y+mh9AALS6uCC/0A@yekko>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y+mh9AALS6uCC/0A@yekko>

On Mon, Feb 13, 2023 at 01:35:32PM +1100, David Gibson wrote:
> On Thu, Feb 09, 2023 at 03:41:14PM -0500, Konstantin Ryabitsev wrote:
> > On Thu, Feb 09, 2023 at 09:53:30PM +1100, David Gibson wrote:
> > > Accidentally revoked the old one :(
> > 
> > Sorry to hear that, but as there are no signatures on your new key that we
> > recognize, we cannot add it to the keyring. Would you be able to get more
> > people to sign your key?
> 
> Ok, I now have a signature from Stephen Rothwell.  Do I need to
> resend, or can you just pull the updated key from the keyservers?

Sorry for the delay, I was away for a week and still playing catch-up with my
inbox.

Please resend the key (as a follow-up to this message is fine). Keyservers are
not reliable these days, unfortunately.

-K

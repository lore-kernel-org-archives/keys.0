Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 907E57E
	for <keys@linux.kernel.org>; Mon,  6 Jun 2022 13:20:55 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id x75so7403208qkb.12
        for <keys@linux.kernel.org>; Mon, 06 Jun 2022 06:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pY/H0Oxm9TyYKjx14QmJslq7qfZ0tQoJnpeVZ8u3jsQ=;
        b=W2marjCHWBkrhlQxjZtsbKKhjOIJbRBf4hni3FBB5PLlenjkznFgRNSD31qoiMmsVa
         RFsDKqlZPqrxi/040ThTMCcCbQ3icd2J3ckeDRIsDyAA8+uYbPdl5csysv+mQbYsz+gx
         zHIiQ/ctEMX0v6/SZtWbdXDHGml79tco9PyLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pY/H0Oxm9TyYKjx14QmJslq7qfZ0tQoJnpeVZ8u3jsQ=;
        b=C9f+BCPQUWWOy2gd8cLtoH4UVJi8QovDnuKRFzLUp17+gt4rbOwr/wRvZmM/vdmJz5
         GEDD7Hjy22Vh857YqReBrlqwXdO3i9+oMQZQ0efVQ+cqRVO1Io8Y0tjBonPw1DgG02Et
         03B+MwsQtM8IQp7DFMAwPr08exsABT5/icchDML005DZVtYs6/Dk8OJKBuhoUHJ60kIm
         E8rC+ry4orIhleegPxfMDxwa8EjFDKHQlyzQXtYDMVtCEXttcCczmeNOoqGvoJTVRm10
         LQqHqe/Z8vlEkwS7xEk1gQ3BU4YQkZdv+z5p7k6D7S1NUX/Yr2HC/f9ndgbGm/9HIf2g
         azbw==
X-Gm-Message-State: AOAM531S0Wf3okUojGKm1iEiGNANuHAg7nb1z7U0/VlDMX0dtNlgWaCc
	6re9GOpgClsYpXCq3AueEFlp0yu62OfRMw==
X-Google-Smtp-Source: ABdhPJwyTAqDBFiu0am6tKcBqQL7oKc0pHKwrnvKlgretiqj4Lxgyf/JnZaFxaD+Rx+GTEKRtofVow==
X-Received: by 2002:a05:620a:2a14:b0:6a3:8820:283e with SMTP id o20-20020a05620a2a1400b006a38820283emr15761200qkp.53.1654521654339;
        Mon, 06 Jun 2022 06:20:54 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
        by smtp.gmail.com with ESMTPSA id bi37-20020a05620a31a500b006a6a550d371sm6405174qkb.121.2022.06.06.06.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 06:20:53 -0700 (PDT)
Date: Mon, 6 Jun 2022 09:20:52 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Sathyanarayanan Kuppuswamy <sathyanarayanan.kuppuswamy@linux.intel.com>
Cc: keys@linux.kernel.org
Subject: Re: Add my kernel.org email address
Message-ID: <20220606132052.5ftxgvhev34jwdgr@meerkat.local>
References: <49880e02-e61d-2771-0600-d651fb1c883e@linux.intel.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <49880e02-e61d-2771-0600-d651fb1c883e@linux.intel.com>

On Sat, Jun 04, 2022 at 02:44:43PM -0700, Sathyanarayanan Kuppuswamy wrote:

Updated, thanks.
